# world_manager

This node has a service for adding meshes to the MoveIt! planning scene.  For every object added to the scene, the TF for that object is continously broadcast by the world manager.  This node is also configured to add walls to MoveIt! planning scene on startup. 

## Launch configuration
```xml
<group ns="world_manager">
    <!--Load the walls for your workspace-->
    <rosparam command="load" file="$(arg workspace_yaml)"/>

    <node name="world_manager" pkg="world_manager" type="world_manager_server.py" output="screen"/>
</group>
```

Example workspace file
```yaml
walls:
  - name: "table"
    x_thickness: 2.45
    y_thickness: 2.75
    z_thickness: 0.05
    qx: 0
    qy: 0
    qz: 0
    qw: 1
    x: 0.5
    y: 0.3
    z: -0.0255
    frame_id: world
  - name: "wall"
    x_thickness: 0.05
    y_thickness: 2
    z_thickness: 2
    qx: 0
    qy: 0
    qz: 0
    qw: 1
    x: 0.6
    y: -0.3
    z: -0.0255
    frame_id: world
```
