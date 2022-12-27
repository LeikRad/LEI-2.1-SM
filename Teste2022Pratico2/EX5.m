clear all

load("Guitar01.mat")

x_new = x(1:1000);

nbit = 3;

t = 0:1/fa:length(x_new)*(1/fa)-(1/fa);

Vfs = abs(max(x_new)) +abs(min(x_new));
delta = Vfs/(2^nbit);
[indx, quantz] = quantiz(x_new,min(x_new):delta:max(x_new),min(x_new)-delta/2:delta:max(x_new)+delta/2);

figure(1)
title("Sinal quantizado")
plot(t,x_new, "g", t,quantz);legend("X New","Quantização do sinal");xlabel("Tempo (s)");ylabel("Sinal")

[recont, reconx] = ReconstroiSinal(quantz,1/fa);
figure(2)
title("Sinal reconstruido")
plot(t,x_new,"g", recont, reconx);legend("X New", "Reconstruição do sinal quantizado");xlabel("Tempo (s)");ylabel("Sinal")