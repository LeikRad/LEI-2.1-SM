function [Image] = DecodeStream(N,M,Stream)
%DECODESTREAM Summary of this function goes here
%   Detailed explanation goes here
    Image=uint8(zeros(N,M));
    indexN=1; indexM=1;
    for i=1:2:length(Stream)
        for num = 1:Stream(i)
            Image(indexN,indexM) = Stream(i+1);
            indexM = indexM + 1;
            if indexM == M+1
                indexN = indexN + 1;
                indexM = 1;
            end
        end
    end
end

