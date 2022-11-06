function [x,t] = ExecFourier(Ta,f0,Np,Ak,Bk)
%FOURIRER Summary of this function goes here
%   Detailed explanation goes here
    N=round(Np/(f0*Ta));
    t=[0 : (N-1)]'*Ta;
    x=zeros(N,1);
    W0 = 2*pi*f0;
    for i=1:length(Ak)
        x = x + Ak(i)*cos(W0*(i-1)*t) + Bk(i)*sin(W0*(i-1)*t);
    end

end

%Ta = 0.01;
%f0 = 2;
%T0 = 1/f0;
%Np = 3;
%N = round(Np*T0/Ta);

%t = (0:N-1)*Ta