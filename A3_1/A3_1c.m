
f= (20*pi)/(2*pi);
T = 1/f;

t = 0:0.001:T*4;
x = sin(20*pi*t+70*pi/180);
y = sin(20*pi*t+200*pi/180);
p = x+y;

plot(t,p,"b")
hold on
plot(t,x)
plot(t,y)
hold off