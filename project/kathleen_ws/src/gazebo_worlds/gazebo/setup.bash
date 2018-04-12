#temporary script for setting up gazebo / ogre resourcesa
export GAZEBO_RESOURCE_PATH=`rospack plugins --attrib="gazebo_media_path" gazebo | awk 'BEGIN { getline; printf $2 }; { printf ":"$2 }'`
export GAZEBO_PLUGIN_PATH=`rospack plugins --attrib="plugin_path" gazebo | awk 'BEGIN { getline; printf $2 }; { printf ":"$2 }'`
export OGRE_RESOURCE_PATH=`rospack find ogre`/ogre/lib/OGRE
