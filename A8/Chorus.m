function y = Chorus(x, fs, MaxDelay, NumComp)
%CHORUS Summary of this function goes here
%   Detailed explanation goes here
    N = length(x);
    y = zeros(N,1);
    for n=1:NumComp
        CurDelay=rand(1,1)*MaxDelay;
        dn = max([1 round(CurDelay*fs)]);
        y(dn : end) = y(dn : end) + x(1 : end-dn+1);
    end
Px = x'*x/N;
Py = y'*y/N;
y = y*sqrt(Px/Py);
end