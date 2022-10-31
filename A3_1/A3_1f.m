fx=(6*pi)/(2*pi);
fy=(7*pi)/(2*pi);
fz=(8*pi)/(2*pi)

mdc1 = 1/10 * gcd(10*fx,10*fy);
f0 = 1/10 * gcd(10*mdc1, fz*10);

T = 1/f0;

t = 0:0.001:4*T;

x=sin(6*pi*t);
y=sin(8*pi*t);
z=sin(7*pi*t);
q = x+y+z;

plot(t,q)