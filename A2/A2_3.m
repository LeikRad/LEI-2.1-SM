t1 = 0:0.01:5;
x = 2*sin(4*pi*t1);
y = cos(10*pi*t1);
z = x.*y;
t2 = 0:0.01:10;
w = 3*sin(pi*t2)+2*sin(6*pi*t2);

p1 = plot(t1,x,"r");
hold on
p2 = plot(t1,y,"b");
p3 = plot(t1,z,"-og");
p4 = plot(t2,w,"y")
hold off
p1.LineWidth = 1;
p2.LineWidth = 2;
p3.LineWidth = 1;
p4.LineWidth = 2;
