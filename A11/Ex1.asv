clear all

[Image, Colormap] = imread("Parede_8bit.bmp");


save8bitImage("testFile", Image);

[N,M,Im] = load8bitImage('testFile');

stream = Enconding_RLE(Image);
 
Save8BitStream("TestStream",N,M,stream);
 
[N,M,Stream] = Load8BitStream("TestStream");
 
imagetest = DecodeImage_RLE(N,M,Stream);
