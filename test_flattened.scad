use <lasercut.scad>;
$fn=60;
module flat(){
projection(cut = false)

lasercutout(thickness = 3.1, 
          points = [[0, 0], [50, 0], [50, 75], [0, 75], [0, 0]]
        , bumpy_finger_joints = [[0, 1, 5], [180, 1, 5], [90, 1, 5], [270, 1, 5]]
        ) 

;
}

flat();
