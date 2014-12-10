%Calculo teóricos:

prob=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];

tsim=1000;
i=1;
j=1;
k=1;

%Calculo de CLP teórico
for k=1:11
    CLP(k)= 1-(th_teorico(k)/prob(k));
end

%Calcular los distintos throughputs en simulaciones aparte creando vectores
%de throughput distintos para cada capacidad


%Este bucle es para calcular la probabilidad de pérdidas y el retardo medio
for p=0:0.1:1
 
    sim('practica2_3x3sonmem', tsim);
    
    %utilizando los índices del vector de generados calculamos los
    %generados que van a 1 y a 2 (los que van a 0 no son paquetes)
    ind_gen1_1=find(generados1==1);
    ind_gen1_2=find(generados1==2);
    ind_gen2_1=find(generados2==1);
    ind_gen2_2=find(generados2==2);
    ind_gen3_1=find(generados1==1);
    ind_gen3_2=find(generados1==2);

    gen1 = length(ind_gen1_1) + length(ind_gen1_2); 
    gen2 = length(ind_gen2_1) + length(ind_gen2_2);
    gen3 = length(ind_gen3_1) + length(ind_gen3_2);
    
    paq_generados = gen1 + gen2 + gen3;
    
    paq_salen = servidos1(end) + servidos2(end) + servidos3(end);
    prob_perdidas(j) = (paq_generados - paq_salen)/ paq_generados;
    
    retardo(j) = mean(retardo1); %Cambiar nombre de retardo para distintos valores de tamaño de cola 
    
    j=j+1;
    
end

figure 
hold on
plot(prob, prob_perdidas, 'r');
plot(prob,CLP, 'g');
hold off
figure
plot(prob,retardo);
