w = linspace(0, 2*pi, 200);

f = sin(w*4).*exp(1i*w);
g = sin(8*w).*exp(1i*w);
subplot(1,2,1);
plot(f,"g");
subplot(1,2,2);
plot(g,"r");
