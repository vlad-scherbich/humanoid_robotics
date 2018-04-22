/*

ROS node for point cloud cluster based segmentaion of cluttered objects on table

Author: Sean Cassero
7/15/15

*/


#include <ros/ros.h>
#include <ros/common.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/point_cloud_conversion.h>
#include <pcl_conversions/pcl_conversions.h>
#include <iostream>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/registration/icp.h>
#include <obj_recognition/SegmentedClustersArray.h>
#include <pcl/io/vtk_lib_io.h>
#include <pcl/io/ply_io.h>
#include <pcl/conversions.h>
#include <Eigen/Core>
#include <Eigen/Geometry>
#include <eigen_conversions/eigen_msg.h>

#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/tf.h>
#include <tf/transform_datatypes.h>
#include <tf/transform_listener.h>
#include <tf2/convert.h>
#include "tf_conversions/tf_eigen.h"
#include <tf2/convert.h>
#include <tf2_eigen/tf2_eigen.h>

class icp_recognition {

public:

    explicit icp_recognition(ros::NodeHandle nh) : m_nh(nh) {
        // define the subscriber and publisher
        m_clusterSub = m_nh.subscribe("/obj_recognition/pcl_clusters", 1, &icp_recognition::cluster_cb, this);
    }

private:

    ros::NodeHandle m_nh;
    ros::Subscriber m_clusterSub;

    void cluster_cb(const obj_recognition::SegmentedClustersArray& cluster_msg);

}; // end class definition

// define callback function
void icp_recognition::cluster_cb (const obj_recognition::SegmentedClustersArray& cluster_msg)
{
    for(const sensor_msgs::PointCloud2 &cluster : cluster_msg.clusters) {
        // Container for original & filtered data
        pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_in (new pcl::PointCloud<pcl::PointXYZ>);
        pcl::fromROSMsg(cluster, *cloud_in);

        pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_out (new pcl::PointCloud<pcl::PointXYZ>);
        // Print attributes of input cloud
        std::cout << "Saved " << cloud_in->points.size () << " data points to input:"
                  << std::endl;

	// Convert candidate meshes to cloud
        const std::string meshFileName = "/home/kathleen/humanoid_robotics/project/fetch_ws/src/PCL-ROS-cluster-Segmentation/models/bowl/meshes/bowl.ply";

	// Load .ply file into pointcloud
	pcl::PolygonMesh objectMesh;
	pcl::io::loadPolygonFilePLY(meshFileName, objectMesh);
	std::cout << "loaded PLY FILE";        
	pcl::fromPCLPointCloud2(objectMesh.cloud, *cloud_out);
        
	// Run ICP algorithm and print score
	pcl::IterativeClosestPoint<pcl::PointXYZ, pcl::PointXYZ> icp;
        icp.setInputSource(cloud_in);
        icp.setInputTarget(cloud_out);
        pcl::PointCloud<pcl::PointXYZ> Final;
        icp.align(Final);
        std::cout << " has converged:" << icp.hasConverged() << " score: " <<
                  icp.getFitnessScore() << std::endl;
        
	// Get final transformed matrix4f
	std::cout << icp.getFinalTransformation() << std::endl;
	Eigen::Matrix4f trans = icp.getFinalTransformation();
	
	// Convert Matrix4f to Matrix4d 
	Eigen::Matrix4d m4 = trans.template cast<double>(); 
	
	// Convert Matrix4f to Affine3d 
	Eigen::Affine3d af3d;
	af3d.matrix() = m4;

	// Convert Affine3d to geometry_msgs
	geometry_msgs::Pose pose;
	pose = tf2::toMsg(af3d);
	
	// Print Pose 
	std::cout << "Pose: " << std::endl;
	std::cout << pose << std::endl;

    }
}



int main (int argc, char** argv)
{
    // Initialize ROS
    ros::init (argc, argv, "ICPRecognition");
    ros::NodeHandle nh;

    // Object for icp_recognition 
    icp_recognition recognizer(nh);

    while(ros::ok())
        ros::spin ();

}
