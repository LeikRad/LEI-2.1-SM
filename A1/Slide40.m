x = linspace(-2*pi, 0, 200);
y = sin(x).*exp(x);

plot(x,y,"o-r")
axis([-8 0 -0.5 0.8])
ylabel('y axis')
xlabel('x axis')
legend('y=sin(x)e^x')
title('title')
