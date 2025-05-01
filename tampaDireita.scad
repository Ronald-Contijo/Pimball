 
 
 //=====lateral direita===============
    difference(){
        //objeto principal
        translate([-distanciaVisu+thickness,0,0])
        rotate([0,-90,0])
        color(cor,1)
        lasercutoutSquare(thickness=thickness, x=alturaParteTras, y=comprimentoCaixa,
            bumpy_finger_joints=[
                    [DOWN, 0, numeroDentesParteGrande],
                    [LEFT,0,numeroDentesParteGrande],
                ]
            );

        //subtrair triangulo
        translate([-10 -distanciaVisu,1,1])
        rotate([90,0,90])
        lasercutout(thickness=thickness*5, points = points);
        
        //subtrair furos
        translate([-distanciaVisu+thickness,0,alturaParteTras-50])
        rotate([-anguloRotacao,0,0])
        lasercutoutSquare(thickness=thickness*1.05, x=larguraCaixa, y=comprimentoBolaPassa,
            bumpy_finger_joints=[
                    [UP, 1, numeroDentesParteGrande],
                    [LEFT,1,numeroDentesParteGrande],
                    [RIGHT,1,numeroDentesParteGrande]
                ]
            );
    }