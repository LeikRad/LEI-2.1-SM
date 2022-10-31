t1 = 0:0.1:5;
x = 2*sin(4*pi*t1);
y = cos(10*pi*t1);
z = x.*y;
t2 = 0:0.1:10;
w = 3*sin(pi*t2)+2*sin(6*pi*t2);

p1 = plot(t1,x);
hold on
p2 = plot(t1,y);
p3 = plot(t1,z);
p4 = plot(t2,w)
hold off