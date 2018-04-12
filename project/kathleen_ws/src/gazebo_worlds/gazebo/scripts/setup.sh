export GAZEBO_MASTER_URI=${GAZEBO_MASTER_URI:-"http://localhost:11345"}
export GAZEBO_MODEL_DATABASE_URI=http://gazebosim.org/models
export GAZEBO_RESOURCE_PATH=`rospack find gazebo`/gazebo/share/gazebo-1.5:`rospack find gazebo`/gazebo/share/gazebo_models
export GAZEBO_PLUGIN_PATH=`rospack find gazebo`/gazebo/lib/gazebo-1.5/plugins
export LD_LIBRARY_PATH=`rospack find gazebo`/gazebo/lib/gazebo-1.5/plugins:${LD_LIBRARY_PATH}
export OGRE_RESOURCE_PATH=/usr/lib/x86_64-linux-gnu/OGRE-1.7.4:/usr/lib/i386-linux-gnu/OGRE-1.7.4:/usr/lib/OGRE
