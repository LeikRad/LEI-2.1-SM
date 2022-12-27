clear all

load("Guitar01.mat")

[X, f] = Espetro(x, 1/fa);

figure(1)
plot(f,abs(X))
xlim([-5e3 5e3])
ylim([0 4e-3])
xlabel("Frequência (Hz)")
ylabel("Magnitude (dB)")
legend("Espetro do Sinal Guitarra")