function [ salida ] = negativo( imagen )
%   cambia los ceros a unos y viceversa
[m,n]=size(imagen);
salida=zeros(m,n);
for i=1:1:m
    for j=1:1:n
        if imagen(i,j)==1
            salida(i,j)=0;
        else
            salida(i,j)=1;
        end
    end
end

end