function [N,M,Im] = load8bitImage(Filename)
%LOAD8BITIMAGE Summary of this function goes here
%   Detailed explanation goes here
    f = fopen(Filename);
    N = fread(f,1,"uint16");
    M = fread(f,1,"uint16");
    Im = uint8(fread(f,[N M],"uint8"));
    fclose(f);
end

