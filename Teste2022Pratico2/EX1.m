clear all

load("Guitar01.mat")

sound(x,fa)

t = 0:1/fa:length(x)*(1/fa)-(1/fa);

figure(1)
plot(t,x);xlabel("Tempo(s)");ylabel("Sinal");legend("Sinal Guitarra")
