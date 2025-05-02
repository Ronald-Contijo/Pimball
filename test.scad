include <lasercut.scad>; //importação da biblioteca com funcionalidades muito uteis
//até segunda ordem o de 4 com 6 cm
// A DE 5 pontas com 10 cm
$fn=60;
thickness = 3.1;//define grossura do mdf

fator = 1;//variavel que define a escala
larguraCaixa = 400*fator;
comprimentoCaixa = 600*fator;
comprimentoBolaPassa = 550*fator;
alturaParteTras = 200*fator;
alturaFrente = 100*fator;

bordaFundo = 0;//mudar pra 1 para fazer um furo no fundo
tamanhoBordaFundo=50;

anguloRotacao = 8;
numeroDentesParteGrande=5;
distanciaVisu = thickness;

 
//definir modo de exibição
montagem = true;

//definir cor do mdf
cor = [255/255,192/255,203/255];
//cor = [66/255, 135/255, 100/255];

//pontos do losango da que retira da parte do lado
points = [[0,alturaParteTras],[comprimentoCaixa,alturaParteTras],[comprimentoCaixa,alturaFrente], [0,alturaParteTras]];
if(montagem){
    include <fundo.scad>;
    include <tras.scad>;    
    include <tampaDireita.scad>;
    include <tampaEsquerda.scad>;
    include <plataformaBola.scad>;
}else{
    //criar projeção pra corte a laser
    projection(){
        translate([10,10,0])
        include <fundo.scad>;
        
        
        translate([larguraCaixa+10,+10,0]){
            rotate([-90,0,0])
            translate([10,distanciaVisu,0])
            include <tras.scad>;    
            translate([larguraCaixa+20,0,0]){
                rotate([0,90,0])
                include <tampaDireita.scad>;

                translate([alturaParteTras,0,0]){
                    rotate([0,90,0])
                    translate([0,0,10])
                    include <tampaDireita.scad>;

                    translate([alturaParteTras+20,+20,-alturaFrente]){
                        rotate([anguloRotacao,0,0])
                        include <plataformaBola.scad>;
                        translate([larguraCaixa+10,0,0])
                        include <curvas.scad>;
                    }
                    
                    
                }
            }
        }
    }
    
}