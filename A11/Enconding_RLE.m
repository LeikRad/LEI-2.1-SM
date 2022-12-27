function [Stream] = Enconding_RLE(Image)
%ENCONDING_RLE Summary of this function goes here
%   Detailed explanation goes here
    [n,m] = size(Image);
    nIndex = 1;
    mIndex = 2;
    i = 1;
    num = 1;
    numToCheck = Image(nIndex,1);
    while nIndex ~= n+1
        tempNum = Image(nIndex,mIndex);
        if tempNum ~= numToCheck
            Stream(i,1) = uint8(num);
            Stream(i+1,1) = uint8(numToCheck);
            i = i+2;
            num = 0;
            numToCheck = tempNum;
        end
        num = num + 1;
        if mIndex == m
            nIndex = nIndex + 1;
            mIndex = 0;
        end
        mIndex = mIndex + 1;
    end
    Stream(i,1) = uint8(num);
    Stream(i+1,1) = uint8(numToCheck);
end

