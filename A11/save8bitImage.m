function [] = save8bitImage(Filename,Image)
%SAVE8BITIMAGE Summary of this function goes here
%   Detailed explanation goes here
    f = fopen(Filename,'wb');
    [n,m] = size(Image);
    N = uint16(n);
    M = uint16(m);
    fwrite(f,N,"uint16");
    fwrite(f,M,"uint16");
    fwrite(f,Image,"uint8");
    fclose(f);
end

