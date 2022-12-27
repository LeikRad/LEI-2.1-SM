clear all

load('Guitar03.mat')

%sound(x,fa)

[X, f] = Espetro(x, 1/fa);

figure(1)
plot(f,abs(X))
xlim([-4000 4000])

newX = Filter(X, f, [100 700]);

figure(3)
plot(f,abs(newX))

[reconX, t] = Reconstroi(newX,f);

figure(4)
plot(real(t), reconX)

sound(reconX, fa)
