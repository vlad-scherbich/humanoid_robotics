/*

ROS node for point cloud cluster based segmentaion of cluttered objects on table

Author: Sean Cassero
7/15/15

*/


#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/point_cloud_conversion.h>

#include <pcl_conversions/pcl_conversions.h>

#include <iostream>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/registration/icp.h>
#include <iostream>
#include <sensor_msgs/PointCloud2.h>
#include <obj_recognition/SegmentedClustersArray.h>
#include <pcl/io/vtk_lib_io.h>

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

        *cloud_out = *cloud_in;
        std::cout << "size:" << cloud_out->points.size() << std::endl;
        for (size_t i = 0; i < cloud_in->points.size (); ++i)
            cloud_out->points[i].x = cloud_in->points[i].x + 0.7f;
        std::cout << "Transformed " << cloud_in->points.size () << " data points:"
                  << std::endl;

        pcl::IterativeClosestPoint<pcl::PointXYZ, pcl::PointXYZ> icp;
        icp.setInputSource(cloud_in);
        icp.setInputTarget(cloud_out);
        pcl::PointCloud<pcl::PointXYZ> Final;
        icp.align(Final);
        std::cout << "has converged:" << icp.hasConverged() << " score: " <<
                  icp.getFitnessScore() << std::endl;
        std::cout << icp.getFinalTransformation() << std::endl;

        // Convert candidate meshes to
        const std::string meshFileName = "test.stl";

        pcl::PolygonMesh testMesh;
        pcl::io::loadPolygonFilePLY()
        pcl::io::loadPolygonFileSTL( meshFileName, testMesh );
        pcl_conversions::fromPCL( testMesh.cloud, output );
	
	
	/* 
	loadPolygonFilePLY - load list of objects as point cloud 
	To do: 
	- For every cluster - compare cluster and all meshes and find the best match
	- Once found, then add to a list of objects found and then later after the for loop, we want to publish the list of objects constantly to a topic. 
	- 
	*/ 
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
