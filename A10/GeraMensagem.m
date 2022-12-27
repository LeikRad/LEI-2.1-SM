function [NumBits,NumBPS] = GeraMensagem(f, CompMesg, nBits)
%GERAMENSAGEM Summary of this function goes here
%   Detailed explanation goes here

freqDict = makedist("Multinomial",f/sum(f));
mesg=random(freqDict,CompMesg,1);
N=length(f);
NumBits=0;
for i=1:N
    NumBit = NumBits + sum(Mesg=i)*nBits(i);
end
NumBPS = NumBit/CompMesg;
end

