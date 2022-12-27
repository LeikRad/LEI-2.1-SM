function [N,M,Stream] = Load8BitStream(Filename)
%LOAD8BITSTREAM Summary of this function goes here
%   Detailed explanation goes here
    f = fopen(Filename,"rb");
    N = fread(f,1,"uint16");
    M = fread(f,1,"uint16");
    Stream = uint8(fread(f,'uint8'));
    fclose(f);
end

