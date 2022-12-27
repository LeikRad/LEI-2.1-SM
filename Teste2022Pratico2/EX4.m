clear all

load("Guitar01.mat")

[X, f] = Espetro(x, 1/fa);


newX = Filter(X, f, [488.90 488.94]);

[reconX, t] = Reconstroi(newX,f);

sound(reconX,fa)

plot(real(t(1:250)), reconX(1:250));xlabel("Tempo (s)"); ylabel("Sinal");legend("Sinal Sinusoide de Freq 488.92Hz")
