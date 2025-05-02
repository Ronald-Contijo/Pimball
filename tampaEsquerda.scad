
    //=========lateral esquerda===============
    difference(){
        translate([larguraCaixa+distanciaVisu,0,0])
        rotate([0,-90,0])
        color(cor,1)
        //lado direito
        lasercutoutSquare(thickness=thickness, x=alturaParteTras, y=comprimentoCaixa,
            bumpy_finger_joints=[
                    [DOWN, 1, numeroDentesParteGrande],
                    [LEFT,1,numeroDentesParteGrande],
                ]
            );
        //subtrqair triangulo
        translate([larguraCaixa-distanciaVisu,+1,+1])
        rotate([90,0,90])
        lasercutout(thickness=thickness*50, points = points);

        //subtrair furos encaixe
        translate([distanciaVisu-thickness,0,alturaParteTras-50])
        rotate([-anguloRotacao,0,0])
        lasercutoutSquare(thickness=thickness*1.05, x=larguraCaixa, y=comprimentoBolaPassa,
            bumpy_finger_joints=[
                    [RIGHT,0,numeroDentesParteGrande]
                ]
            );
    }