function[imglist] = SplitVideo()
vid=VideoReader('ROI6Crop1.avi');
imglist = {};
 for i = 1:vid.NumberOfFrames
 currentImage = imadjust(rgb2gray(read(vid,i)));
 currentImage = removeMaze(currentImage);
 imglist{i} = currentImage;
 end