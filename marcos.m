function [ superior,inferior,izquierda,derecha ] = marcos( bordesf )
%encuentra los bordes que delimitan la operacion
%esta parte encuentra cual es el maximo valor pintado, ya que esto
%significa que hay una linea limite en esa parte de negro en las
%imagenes, asi se puede tomar la foto teniendo la opeacion en cualquier
%parte y la va a encontrar
maxif=0;
for a=1:1:100
    fila=0;
    for b=1:1:300
        fila=fila+bordesf(a,b);
    end
    if fila>maxif
        maxif=fila;
    end
end
maxic=0;
for b=1:1:300
    column=0;
    for a=1:1:100
        column=column+bordesf(a,b);
    end
    if column>maxic
        maxic=column;
    end
end
%con los bordes encontrados se halla la parte interna del rectangulo,
%porque con ese se va a trabajar despues
%parte superior
contador=0;
for i=1:1:100
    sum=0;
    for j=1:1:300
        sum=sum+bordesf(i,j);
    end
    if sum>maxif*95/100
        contador=1;
        superior=i;
    end
    if contador==1&&sum<maxif*95/100
        break
    end
end
%parte inferior
for i=superior+1:1:100
    sum2=0;
    for j=1:1:300
        sum2=sum2+bordesf(i,j);
    end
    if sum2>maxif*95/100
        inferior=i;
        break
    end
end
%parte izquierda
contador2=0;
for j=1:1:300
    sum3=0;
    for i=1:1:100
        sum3=sum3+bordesf(i,j);
    end
    if sum3>maxic*95/100
        contador2=1;
        izquierda=j;
    end
    if contador2==1&&sum3<maxic*95/100
        break
    end
end
%parte derecha
for j=izquierda+1:1:300
    sum4=0;
    for i=1:1:100
        sum4=sum4+bordesf(i,j);
    end
    if sum4>maxic*95/100
        derecha=j;
        break
    end
end
end

