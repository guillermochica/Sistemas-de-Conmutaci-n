function [tx_drop1, tx_drop2, tx_drop3, tx_drop4, tx_drop5, tx_drop6, tx_drop7, tx_drop8, tx_drop9] = port_selection_line1(Dest1, Dest2, Dest3)

MatrizPuntosCruce = ones(3,3);

% Se cierran los puntos de cruce en la Matriz de Barras Cruzadas

if (Dest1 ~= 0)                     %Si la celda en la línea 1 no está vacía
    MatrizPuntosCruce(1,Dest1) = 2; % Se cierra el punto de cruce en
                                    % la primera fila
end

if (Dest2 ~= 0)                    %Si la celda en la línea 2 no está vacía
    MatrizPuntosCruce(2,Dest2) = 2;% Se cierra el punto de cruce en
                                   % la segunda fila
end

if (Dest3 ~= 0)                    %Si la celda en la línea 3 no está vacía
    MatrizPuntosCruce(3,Dest3) = 2;% Se cierra el punto de cruce en
                                   % la tercera fila
end

% Si hay contención en el puerto de salida 1 (columna1)


%Encuentra los puntos de cruce en la columna 1 que están cerrados
indices1 = zeros(1,3); %Vector que contendrá el índice de los puntos de cruce cerrados
puntos_cruce1 = 0; %Variable que contendrá el numero de puntos de cruce cerrados
l=1;
for m=1:3
    if(MatrizPuntosCruce(m,1) == 2);
        indices1(l) = m;
        l = l+ 1;
        puntos_cruce1 = puntos_cruce1 + 1;
    end
end


if (puntos_cruce1==3) %Si hay 3 puntos de cruce cerrados
    MatrizPuntosCruce(1,1)= 1;
    MatrizPuntosCruce(2,1)= 1;
    MatrizPuntosCruce(3,1)= 1;
    r = round(rand*2+1); %Numero aleatorio entre 1 y 3
    MatrizPuntosCruce(r,1)= 2;
end
if (puntos_cruce1 == 2) %Si hay 2 puntos de cruce cerrados
    MatrizPuntosCruce(1,1)= 1;
    MatrizPuntosCruce(2,1)= 1;
    MatrizPuntosCruce(3,1)= 1;

    r = round(rand); %Numero aleatorio que es o 0 o 1
    if(r==0) %Si el número que da es 0, cierro un punto de cruce
        MatrizPuntosCruce(indices1(1),1) = 2;
    end
    if(r==1) %Si el número que da es 1, cierro el otro punto de cruce
        MatrizPuntosCruce(indices1(2),1) = 2;
    end
end

% Si hay contención en el puerto de salida 2

%Encuentra los puntos de cruce en la columna 1 que están cerrados
indices2 = zeros(1,3); %Vector que contendrá el índice de los puntos de cruce cerrados
puntos_cruce2 = 0; %Variable que contendrá el numero de puntos de cruce cerrados
l = 1;
for m=1:3
    if(MatrizPuntosCruce(m,1) == 2);
        indices2(l) = m;
        l=l+1;
        puntos_cruce2 = puntos_cruce2 + 1;
    end
end


if (puntos_cruce2==3) %Si hay 3 puntos de cruce cerrados
    MatrizPuntosCruce(1,2)= 1;
    MatrizPuntosCruce(2,2)= 1;
    MatrizPuntosCruce(3,2)= 1;
    r = round(rand*2+1); %Numero aleatorio entre 1 y 3
    MatrizPuntosCruce(r,2)= 2;
end
if (puntos_cruce2 == 2) %Si hay 2 puntos de cruce cerrados
    MatrizPuntosCruce(1,2)= 1;
    MatrizPuntosCruce(2,2)= 1;
    MatrizPuntosCruce(3,2)= 1;

    r = round(rand); %Numero aleatorio que es o 0 o 1
    if(r==0) %Si el número que da es 0, cierro un punto de cruce
        MatrizPuntosCruce(indices2(1),2) = 2;
    end
    if(r==1) %Si el número que da es 1, cierro el otro punto de cruce
        MatrizPuntosCruce(indices2(2),2) = 2;
    end
end

% Si hay contención en el puerto de salida 3

%Encuentra los puntos de cruce en la columna 1 que están cerrados
indices3 = zeros(1,3); %Vector que contendrá el índice de los puntos de cruce cerrados
puntos_cruce3 = 0; %Variable que contendrá el numero de puntos de cruce cerrados
l=1;
for i=1:3
    if(MatrizPuntosCruce(m,1) == 2);
        indices3(l) = m;
        l=l+1;
        puntos_cruce3 = puntos_cruce3 + 1;
    end
end


if (puntos_cruce3==3) %Si hay 3 puntos de cruce cerrados
    MatrizPuntosCruce(1,3)= 1;
    MatrizPuntosCruce(2,3)= 1;
    MatrizPuntosCruce(3,3)= 1;
    r = round(rand*2+1); %Numero aleatorio entre 1 y 3
    MatrizPuntosCruce(r,3)= 2;
end
if (puntos_cruce3 == 2) %Si hay 2 puntos de cruce cerrados
    MatrizPuntosCruce(1,3)= 1;
    MatrizPuntosCruce(2,3)= 1;
    MatrizPuntosCruce(3,3)= 1;

    r = round(rand); %Numero aleatorio que es o 0 o 1
    if(r==0) %Si el número que da es 0, cierro un punto de cruce
        MatrizPuntosCruce(indices3(1),3) = 2;
    end
    if(r==1) %Si el número que da es 1, cierro el otro punto de cruce
        MatrizPuntosCruce(indices3(2),3) = 2;
    end
end

tx_drop1 = MatrizPuntosCruce(1,1);
tx_drop2 = MatrizPuntosCruce(1,2);
tx_drop3 = MatrizPuntosCruce(1,3);
tx_drop4 = MatrizPuntosCruce(2,1);
tx_drop5 = MatrizPuntosCruce(2,2);
tx_drop6 = MatrizPuntosCruce(2,3);
tx_drop7 = MatrizPuntosCruce(3,1);
tx_drop8 = MatrizPuntosCruce(3,2);
tx_drop9 = MatrizPuntosCruce(3,3);
