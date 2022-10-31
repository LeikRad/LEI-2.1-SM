x = linspace(0,2*pi,100);
N1 = 2;
N2 = 10;

Resultado = TaylorSeries(N2,x);

plot(x,sin(x));
hold on
plot(x, Resultado)