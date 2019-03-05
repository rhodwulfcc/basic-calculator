function [ unidad,decena ] = mostrarresul( numero )
%UNTITLED6 Summary of this function goes here
%   con esta funcion se mostrara el resultado de forma grafica
%primero se ingresa todas las imagenes con las que se va a comparar la foto
%y se las transforma a blanco y negro para trabajar con matrices con
%numeros 0 y 1, y se las pone en un tamaño mas pequeño para trabajar mas
%facilmente
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
iguali=imread('=.jpg');
igualbn=im2bw(iguali);
igual=imresize(igualbn,[100 100]);
%en esta parte se toma el resultado de la operacion y se la divide en
%unidades y decenas
unidad=mod(numero,10)
decena=(numero-unidad)/10
%en esta parte se muestra el igual y el numero respuesta
subplot(1,6,4)
imshow(igual)
subplot(1,6,5)
ploteo(decena)
subplot(1,6,6)
ploteo(unidad)
%con esta subfuncion se muestra la imagen del numero resultante
function [  ] = ploteo( mostrar )
switch mostrar
    case 0
        imshow(cero)
    case 1
        imshow(uno)
    case 2
        imshow(dos)
    case 3
        imshow(tres)
    case 4
        imshow(cuatro)
    case 5
        imshow(cinco)
    case 6
        imshow(seis)
    case 7
        imshow(siete)
    case 8
        imshow(ocho)
    case 9
        imshow(nueve)
end
end
end

