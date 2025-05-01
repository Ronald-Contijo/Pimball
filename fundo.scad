

difference(){
        translate([0,0,-thickness])
        color(cor,1)
        lasercutoutSquare(thickness=thickness, x=larguraCaixa, y=comprimentoCaixa,
            bumpy_finger_joints=[
                    [UP, 1, numeroDentesParteGrande],
                    [DOWN, 1, numeroDentesParteGrande],
                    [LEFT,1,numeroDentesParteGrande],
                    [RIGHT,1,numeroDentesParteGrande]
                ]
            );
        //retirar fundo 
        translate([tamanhoBordaFundo,tamanhoBordaFundo,-distanciaVisu])
        cube([
                (larguraCaixa-tamanhoBordaFundo*2)*bordaFundo,
                (comprimentoCaixa-tamanhoBordaFundo*2)*bordaFundo,
                100*bordaFundo
            ]);

    }