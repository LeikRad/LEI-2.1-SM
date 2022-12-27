clear all

load("Guitar01.mat")

fa_new = 2*fa;
[Xaltered, faltered] = Espetro(x, 1/fa_new);
sound(x,fa_new)
figure("Name", "Espetro do Sinal alterado")
plot(faltered,abs(Xaltered));xlabel("Frequência (Hz)");ylabel("Magnitude (dB)")
xlim([-5e3 5e3])
ylim([0 4e-3])
legend("Espetro do Sinal alterado")
[X, f] = Espetro(x, 1/fa);

figure("Name","Espetro do Sinal Normal")
plot(f,abs(X))
xlim([-5e3 5e3])
ylim([0 4e-3])
xlabel("Frequência (Hz)")
ylabel("Magnitude (dB)")
legend("Espetro do Sinal Normal")
t = 0:1/fa:length(x)*(1/fa)-(1/fa);

figure("Name","Sinal Normal")
plot(t,x);xlabel("Tempo(s)");ylabel("Sinal")
legend("Sinal Normal")
taltered = 0:1/fa_new:length(x)*(1/fa_new)-(1/fa_new);

figure("Name","Sinal alterado")
plot(taltered,x);xlabel("Tempo(s)");ylabel("Sinal")
legend("Sinal alterado")
