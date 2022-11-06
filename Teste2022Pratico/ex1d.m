% soma de ondas sinusoidais
Ta = 0.01;
f1 = 3/2;
f2 = 5/2;
fo = gcd(f1*10,f2*10)/10;
To = 1/fo;
np = 30;
N= round(np*To/Ta);
t = (0:N-1)*Ta;
y = 12*cos(3*pi*t-pi/4)+8*sin(5*pi*t+pi/5);
% escrever erro
temp_frequencia(5,Ta,To,np,y)
% mostrar ambos graficos
temp_frequencia(3,Ta,To,np,y)

% onda quadrada
clear all
Ta = 0.001;
f = 2;
To = 1/f;
t = 0:Ta:5-Ta;

np = 5/To;
y = square(4*pi*t)+1;

% escrever erro
temp_frequencia(5,Ta,To,np,y)
% mostrar ambos graficos
temp_frequencia(3,Ta,To,np,y)