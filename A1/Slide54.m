x = linspace(-1,1, 51);
y = linspace(-1,1, 51);
[XX,YY] = meshgrid(x,y);
exponent1 = -abs(XX+YY);
f = cos(4*pi*(XX+YY)).*exp(exponent1);

surf(x,y,f)


