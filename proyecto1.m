%%%%%%%%PARA CAMBIAR DE IMAGEN, CAMBIAR EN LA LINEA 11 EL ARCHIVO, TOMAR EN
%%%%%%%%CUENTA EN QUE TERMINA EL ARCHIVO YA QUE PARA PRUEBA SE UTILIZO
%%%%%%%%DIBUJOS EN PAIN .PNG Y PARA PROBAR CON FOTOS SE UTILIZO FOTOS TIPO
%%%%%%%%.JPG
clear;
clc;
%primero se ingresa la imagen con la que se va a trabajar
%y se la transforma a blanco y negro para trabajar con matrices con
%numeros 0 y 1, y se la pone en un tamaño mas pequeño para trabajar mas
%facilmente
fotoi=imread('foto1.png');
fotobn=im2bw(fotoi,0.4);
foto=imresize(fotobn,[100 300]);
%para trabajar mas facilmente se necesita que los elementos de la matriz
%que se ocupan sean opuestos, osea que lo negro tome el valor de 1 y lo
%blanco tome el valor de 0, se lo realiza con la funcion "negativo"
fotof=negativo(foto);
%se recorta la foto para solo utilizar la parte que se necesita
[sup,inf,izq,der]=marcos(fotof);
interno=fotof(sup+1:inf-1,izq+1:der-1);
internofi=imresize(interno,[100 300]);
internof=im2bw(internofi);
internofbn=negativo(interno);
%se divide la parte en que se va a trabajar en tres,
%numero1-simbolo-numero2
numero1=internof(:,1:100);
numero1s=negativo(numero1);
simbolo=internof(:,101:200);
simbolos=negativo(simbolo);
numero2=internof(:,201:300);
numero2s=negativo(numero2);
%se muestra la imagen dividida en 3 partes
subplot(1,6,1);
imshow(numero1s)
subplot(1,6,2);
imshow(simbolos)
subplot(1,6,3);
imshow(numero2s)
%para cada caso de numero se compara la imagen recortada con los ejemplos
%que ya se tiene para determinar que numero representa la imagen y que
%simbolo representa la imagen del centro
valor1=comparanum(numero1)
valor2=comparanum(numero2)
operac=comparsimb(simbolo)
%despues de identificar el simbolo en esta parte se procede a la operacion
%que se desea resolver
switch operac
    case 1
        resultado=valor1+valor2;
    case 2
        resultado=valor1-valor2;
    case 3
        resultado=valor1*valor2;
    case 4
        resultado=valor1/valor2;
    otherwise
        disp('no existe esa operacion')
end
%despues de tener el resultado se lo despliega utilizando los numeros que
%ya se tiene poniendolos en posicion correcta
mostrarresul(resultado);