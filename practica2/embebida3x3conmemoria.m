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


tx_drop1 = MatrizPuntosCruce(1,1);
tx_drop2 = MatrizPuntosCruce(1,2);
tx_drop3 = MatrizPuntosCruce(1,3);
tx_drop4 = MatrizPuntosCruce(2,1);
tx_drop5 = MatrizPuntosCruce(2,2);
tx_drop6 = MatrizPuntosCruce(2,3);
tx_drop7 = MatrizPuntosCruce(3,1);
tx_drop8 = MatrizPuntosCruce(3,2);
tx_drop9 = MatrizPuntosCruce(3,3);
