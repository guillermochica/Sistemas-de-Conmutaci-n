%Calculo teóricos:
clear all
prob=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
%Para calcular CLP debemos evitar el primer valor de los vectores
%anteriores, porque CLP no está definido para p=0 (daría infinito)
prob_CLP=[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
th_CLP=[0.09 0.19 0.277 0.36 0.43 0.51 0.57 0.64 0.69 0.75];

tsim=1000;
i=1;
j=1;
k=1;
%Calculo Throughtput teórico
for k=1:11
    th_teorico(k) = (1 - (1-prob(k)/2)^2);
end

%Calculo de CLP teórico
for k=1:11
    CLP(k)= 1-(th_teorico(k)/prob(k));
end

for p=0:0.1:1
    
    sim('practica2', tsim);
    
    throughput(i)= ( servidos1(end)) /tsim;
    retardo(i) = mean(retardo1);
    
    i=i+1;
    
    %utilizando los índices del vector de generados calculamos los
    %generados que van a 1 y a 2 (los que van a 0 no son paquetes)
    ind_gen1_1=find(generados1==1);
    ind_gen1_2=find(generados1==2);
    ind_gen2_1=find(generados2==1);
    ind_gen2_2=find(generados2==2);

    gen1 = length(ind_gen1_1) + length(ind_gen1_2); 
    gen2 = length(ind_gen2_1) + length(ind_gen2_2);
    
    paq_generados = gen1 + gen2;
    
    paq_salen = servidos1(end) + servidos2(end);
    prob_perdidas(j) = (paq_generados - paq_salen)/ paq_generados;
    
    j=j+1;
    
end

figure 
hold on
plot(prob,throughput);
plot(prob,th_teorico,'g');
hold off

figure 
hold on
plot(prob, prob_perdidas, 'r');
plot(prob,CLP, 'g');
hold off
figure
plot(prob,retardo);
