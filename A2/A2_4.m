t = 0:0.04:5;
x1 = -5:0.1:5;
x2 = -5:0.1:5;
[X1,X2] = meshgrid(x1,x2);

for I = 1:length(t)
    tValue = t(I);
    sqrtvalue = X1.^2+X2.^2;
    r = 2*sin(2*pi*sqrt(sqrtvalue)-2*pi*tValue);
    pcolor(x1,x2,r);
    shading interp
    drawnow
end