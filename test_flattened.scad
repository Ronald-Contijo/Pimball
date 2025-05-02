use <lasercut.scad>;
$fn=60;
module flat(){
projection(cut = false)

lasercutout(thickness = 3.1, 
          points = [[0, 0], [400, 0], [400, 600], [0, 600], [0, 0]]
        , bumpy_finger_joints = [[0, 1, 5], [180, 1, 5], [90, 1, 5], [270, 1, 5]]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [400, 0], [400, 200], [0, 200], [0, 0]]
        , bumpy_finger_joints = [[180, 0, 5], [90, 0, 5], [270, 0, 5]]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [200, 0], [200, 600], [0, 600], [0, 0]]
        , bumpy_finger_joints = [[180, 0, 5], [90, 0, 5]]
        ) 

lasercutout(thickness = 15.5, 
          points = [[0, 200], [600, 200], [600, 100], [0, 200]]
        ) 

lasercutout(thickness = 3.255, 
          points = [[0, 0], [400, 0], [400, 550], [0, 550], [0, 0]]
        , bumpy_finger_joints = [[90, 1, 5]]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [200, 0], [200, 600], [0, 600], [0, 0]]
        , bumpy_finger_joints = [[180, 0, 5], [90, 0, 5]]
        ) 

lasercutout(thickness = 15.5, 
          points = [[0, 200], [600, 200], [600, 100], [0, 200]]
        ) 

lasercutout(thickness = 3.255, 
          points = [[0, 0], [400, 0], [400, 550], [0, 550], [0, 0]]
        , bumpy_finger_joints = [[90, 1, 5]]
        ) 

lasercutout(thickness = 3.255, 
          points = [[0, 0], [400, 0], [400, 550], [0, 550], [0, 0]]
        , bumpy_finger_joints = [[90, 1, 5], [270, 0, 5]]
        ) 

;
}

flat();
