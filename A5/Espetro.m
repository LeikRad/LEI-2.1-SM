function [X,f] = Espetro(x,Ta)
%ESPETRO Summary of this function goes here
%   Detailed explanation goes here
    Fa = 1/Ta;
    N = length(x);
    X = fftshift(fft(x))/N;
    f = (0:N-1)*(Fa/N)-(Fa/2);
end
