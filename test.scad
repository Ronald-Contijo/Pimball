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
distanciaVisu = 50;


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
    include <fundo.scad>;
    /*
    include <tras.scad>;    
    include <tampaDireita.scad>;
    include <tampaEsquerda.scad>;
    include <plataformaBola.scad>;
    */
}