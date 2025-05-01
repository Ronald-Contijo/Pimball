translate([0,-distanciaVisu+3,0])
    rotate([90,0,0])
    color(cor,1)
    lasercutoutSquare(thickness=thickness, x=larguraCaixa, y=alturaParteTras,
        bumpy_finger_joints=[
                [DOWN, 0, numeroDentesParteGrande],
                [LEFT,0,numeroDentesParteGrande],
                [RIGHT,0,numeroDentesParteGrande]
            ]
        );

