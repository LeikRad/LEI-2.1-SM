function [x,t] = CalcSingal(Ck, fo)
%C Summary of this function goes here
%   Detailed explanation goes here
    N = length(Ck);
    T = 1/fo;
    Ta = T/N;
    t=[0 : (N-1)]'*Ta;
    x = zeros(N,1);
    for j=length(Ck)
        x = x + Ck(j)*exp(i*2*pi*j*fo*t);
    end
end

