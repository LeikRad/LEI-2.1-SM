function [] = Save8BitStream(Filename, N, M, Stream)
%SAVE8BITSTREAM Summary of this function goes here
%   Detailed explanation goes here
    f = fopen(Filename,'wb');
    fwrite(f,N,"uint16");
    fwrite(f,M,"uint16");
    fwrite(f,Stream,"uint8");
    fclose(f);

end

