theImage = imread('Image10.jpg');
se = strel('disk',10);
back = imopen(theImage , se);
I2 = theImage - back;
theImage = imadjust(I2);
imshow(theImage)
imwrite(theImage, 'hehe.tif')