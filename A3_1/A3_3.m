
f= (10*pi)/(2*pi);
T = 1/f;
Ta = 0.001;
t = 0:0.001:T*4;

y = sin(10*pi*t + pi/2);

Potencial(y,Ta,T)
