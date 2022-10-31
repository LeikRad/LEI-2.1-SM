function [ak,bk] = FourierCoeffs(Ta, T0, x, k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    f = 1/T0;
    ak=zeros(k,1);
    bk=zeros(k,1);
    k= [0:k-1]';
    
    for i=1:length(x)
        ak = ak + 2/length(x) * x(i) *cos(2*pi*k*f*i*Ta);
        bk = bk + 2/length(x) * x(i) *sin(2*pi*k*f*i*Ta);
    end

end

