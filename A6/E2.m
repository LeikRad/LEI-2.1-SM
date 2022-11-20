%a
ta = 0.2;
t = 0:ta:5-ta;
y = sin(2*pi*t);


[t1,x] = ReconstroiSinal(y,ta);

plot(t1,x,t,y,'.r')


%b

ta = 0.04;
t = 0:ta:5-ta;
y = sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4);


[t1,x] = ReconstroiSinal(y,ta);
figure(2)
plot(t1,x,t,y,'.r')