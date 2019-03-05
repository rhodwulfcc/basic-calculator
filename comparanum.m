function [ valor ] = comparanum( imagen )
%   esta funcion compara las imagenes con imagenes tomadas que ya se tienen
%   para sacar al final el numero que representa la imagen
%primero se ingresa todas las imagenes con las que se va a comparar la foto
%y se las pone en un tamaño mas pequeño para trabajar mas facilmente
ceroi=imread('0.jpg');
cerobn=im2bw(ceroi);
cero=imresize(cerobn,[100 100]);
unoi=imread('1.jpg');
unobn=im2bw(unoi);
uno=imresize(unobn,[100 100]);
dosi=imread('2.jpg');
dosbn=im2bw(dosi);
dos=imresize(dosbn,[100 100]);
tresi=imread('3.jpg');
tresbn=im2bw(tresi);
tres=imresize(tresbn,[100 100]);
cuatroi=imread('4.jpg');
cuatrobn=im2bw(cuatroi);
cuatro=imresize(cuatrobn,[100 100]);
cincoi=imread('5.jpg');
cincobn=im2bw(cincoi);
cinco=imresize(cincobn,[100 100]);
seisi=imread('6.jpg');
seisbn=im2bw(seisi);
seis=imresize(seisbn,[100 100]);
sietei=imread('7.jpg');
sietebn=im2bw(sietei);
siete=imresize(sietebn,[100 100]);
ochoi=imread('8.jpg');
ochobn=im2bw(ochoi);
ocho=imresize(ochobn,[100 100]);
nuevei=imread('9.jpg');
nuevebn=im2bw(nuevei);
nueve=imresize(nuevebn,[100 100]);
%se las transforma a blanco y negro para trabajar con matrices con
%numeros 0 y 1
cerof=negativo(cero);
unof=negativo(uno);
dosf=negativo(dos);
tresf=negativo(tres);
cuatrof=negativo(cuatro);
cincof=negativo(cinco);
seisf=negativo(seis);
sietef=negativo(siete);
ochof=negativo(ocho);
nuevef=negativo(nueve);
%en esta parte se compara con todas las imagenes ingresadas y se queda con
%el valor mas cercano
valor=0;
valor0=compar(imagen,cerof);
puntero=valor0;
valor1=compar(imagen,unof);
if valor1>puntero
    valor=1;
    puntero=valor1;
end
valor2=compar(imagen,dosf);
if valor2>puntero
    valor=2;
    puntero=valor2;
end
valor3=compar(imagen,tresf);
if valor3>puntero
    valor=3;
    puntero=valor3;
end
valor4=compar(imagen,cuatrof);
if valor4>puntero
    valor=4;
    puntero=valor4;
end
valor5=compar(imagen,cincof);
if valor5>puntero
    valor=5;
    puntero=valor4;
end
valor6=compar(imagen,seisf);
if valor6>puntero
    valor=6;
    puntero=valor6;
end
valor7=compar(imagen,sietef);
if valor7>puntero
    valor=7;
    puntero=valor7;
end
valor8=compar(imagen,ochof);
if valor8>puntero
    valor=8;
    puntero=valor8;
end
valor9=compar(imagen,nuevef);
if valor9>puntero
    valor=9;
end
%esta subfuncion encuentra la simetria cuando se comparan las dos imagenes
function [ val ] = compar( imag,caso )
    mat=imag.*caso;
    prim=sum(mat);
    val=sum(prim);
end

end

