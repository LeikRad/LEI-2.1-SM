clear all 
x=[-20 -10 0 10 20];
y =[4 7 10 7 4];
stem(x,y)
t = 0:0.001:2;
y = 10 + 14*cos(20*pi*t-pi/3) + 8*cos(40*pi*t-pi/2);
X= fft(y);
