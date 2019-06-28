function aFrame = removeMaze(ogframe)
 theImage = ogframe;
theImage = wiener2(theImage,[5 5]);
se = strel('disk',15);
back = imopen(theImage , se);
I2 = theImage - back;
theImage = imadjust(I2);
theMaze = imread('facts.tif');
theImage = theImage - theMaze;
theMaze = imread('anotherone.tif');
aFrame = theImage - theMaze;
theMaze = imread('hehe.tif');
aFrame = aFrame - theMaze;

end
% se90 = strel('line',2,90);
% se0 = strel('line',2.4,0);
% seD = strel('diamond',1);
% image3 = imdilate(theImage,[se90 se0]);
% aFrame  = bwareaopen(image3, 800);
% aFrame = imerode(image3,seD);
