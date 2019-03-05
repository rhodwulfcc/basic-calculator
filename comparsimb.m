function [ simbo ] = comparsimb( simbol )
%   en esta funcion se identifica cual es la operacion que queremos hacer
%primero se ingresa todas las imagenes con las que se va a comparar la foto
%y se las transforma a blanco y negro para trabajar con matrices con
%numeros 0 y 1, y se las pone en un tamaño mas pequeño para trabajar mas
%facilmente
masi=imread('+.jpg');
masbn=im2bw(masi);
mas=imresize(masbn,[100 100]);
menosi=imread('-.jpg');
menosbn=im2bw(menosi);
menos=imresize(menosbn,[100 100]);
multiplicadoi=imread('x.jpg');
multiplicadobn=im2bw(multiplicadoi);
multiplicado=imresize(multiplicadobn,[100 100]);
divididoi=imread('div.jpg');
divididobn=im2bw(divididoi);
dividido=imresize(divididobn,[100 100]);
masf=negativo(mas);
menosf=negativo(menos);
multiplicadof=negativo(multiplicado);
divididof=negativo(dividido);
%en esta parte se compara con todas las imagenes ingresadas y se queda con
%el valor mas cercano
simbo=1;
valor1=compar(simbol,masf);
puntero=valor1;
valor2=compar(simbol,menosf);
if valor2>puntero
    simbo=2;
    puntero=valor2;
end
valor3=compar(simbol,multiplicadof);
if valor3>puntero
    simbo=3;
    puntero=valor3;
end
valor4=compar(simbol,divididof);
if valor4>puntero
    simbo=4;
end
%esta subfuncion encuentra la simetria cuando se comparan las dos imagenes
function [ val ] = compar( imag,caso )
    mat=imag.*caso;
    prim=sum(mat);
    val=sum(prim);
end

end

