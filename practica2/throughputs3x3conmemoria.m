
prob=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
i=1;
for p=0:0.1:1
    
    sim('practica2_3x3sonmem', 1000);
    
    throughput(i)= ( servidos1(end)) /1000; %Cambiar el nombre de throughput para distintos valores de tamaño de cola
    i=i+1;
end
plot(prob,throughput);