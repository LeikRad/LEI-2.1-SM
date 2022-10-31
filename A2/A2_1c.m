t = 0:0.01:5;
x = 2*sin(4*pi*t);
y = cos(10*pi*t);
z = x.*y;
plot(t,z);
legend('z=x*y')
