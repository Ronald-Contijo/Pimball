translate([0,0,alturaParteTras-50]) rotate([-anguloRotacao,0,0]){
    color(cor,1)
    lasercutoutSquare(thickness=thickness*1.05, x=larguraCaixa, y=comprimentoBolaPassa,
        bumpy_finger_joints=[
                [LEFT,1,numeroDentesParteGrande],
                [RIGHT,0,numeroDentesParteGrande]
            ]
        );
    if(montagem){
        include <curvas.scad>;
    }
    
}
