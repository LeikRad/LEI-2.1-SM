fx = (6*pi)/(2*pi);
fy = (8*pi)/(2*pi);
f0 = gcd(fx,fy);

T = 1/f0;

t = 0:0.001:4*T;

x=sin(6*pi*t);
y=sin(8*pi*t+0.1);
w=x+y;

plot(t,w)