Maxdelay = 0.3;
NumComp = 15;
y = Chorus(x,fa,MaxDelay,NumComp);
sound(y,factorial)
figure(2);
Ta=1/fa;
[Y,fy] = Chorus()