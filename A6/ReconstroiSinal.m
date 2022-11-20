function [t,y] = ReconstroiSinal(x,Ta)
%RECONSTROISINAL Summary of this function goes here
%   Detailed explanation goes here
    fa = 1/Ta;
    fs = 100*fa;
    N = length(x);
    t=[0 : (100*N-1)]'*(1/fs);
    y=zeros(100*N,1);

    for n=1:N
        y = y + x(n)*sinc(fa*(t-(n-1)*Ta));
    end

end

