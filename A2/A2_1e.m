t1 = 0:0.01:5;
t2 = 0:0.01:5;
[T1,T2] = meshgrid(t1,t2);
q = 2.*sin(2*pi*(2.*T1+T2));

surf(t1,t2,q)
shading interp