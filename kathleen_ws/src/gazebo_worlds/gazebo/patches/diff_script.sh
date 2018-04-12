
svn diff cmake/SearchForStuff.cmake config.h.in > ../patches/damping.patch
svn diff libgazebo/SimIface.cc > ../patches/disable_goackthread.patch
svn diff server/Simulator.cc > ../patches/sim_time.patch
svn diff server/rendering/UserCamera.cc > ../patches/clipping.patch
svn diff CMakeLists.txt server/GazeboConfig.cc > ../patches/disable_gazeborc.patch
svn diff server/physics/ode/ODEPhysics.?? > ../patches/physics_xml_tags.patch
svn diff server/controllers/Controller.?? > ../patches/alwaysOn_alwaysActive.patch 
svn diff  libgazebo/gz.h  > ../patches/newmodel_char.patch
svn diff server/rendering/OgreCamera.cc > ../patches/camera_rgb_flip.patch

