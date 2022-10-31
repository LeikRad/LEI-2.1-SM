function maxPotencial = Potencial(x,Ta,T)
%AMPLITUDE Summary of this function goes here
%   Detailed explanation goes here
    maxIndex = T/Ta;
    x = x(:,1:maxIndex);
    maxPotencial = (x*x')/maxIndex;
end

