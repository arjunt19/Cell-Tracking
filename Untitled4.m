function[convertedFrame] =  Untitled4(frame)%subtracting the binaries
theImage = frame;
se = strel('disk',15);
back = imopen(theImage , se);
I2 = theImage - back;
theImage = imadjust(I2);
[~,threshold] = edge(theImage,'sobel');
image2 = edge(theImage , 'sobel', threshold*0.8);

se90 = strel('line',2,90);
se0 = strel('line',2,0);
%seD = strel('diamond',2);
image3 = imdilate(image2,[se90 se0]);
image3  = bwareaopen(image3, 1000);
image3 = imerode(image3,[se90 se0]);
se = strel('disk',11);
image3 = imdilate(image3,se);
maze = imread('TriedImage.tif');
convertedFrame = image3-maze;
end
%image3  = imopen(image3,seD);
%{
image4 = imfill(image3,'holes');
imshow(image4)
seD = strel('diamond',1);
final = imerode(image4,seD);
final = imerode(final,seD);
final  = bwareaopen(final , 1000);
final = imopen(final, seD);
imshow(final)
%}