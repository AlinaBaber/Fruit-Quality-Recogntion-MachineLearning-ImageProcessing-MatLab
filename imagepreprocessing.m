function [BW,grayscaleimage,enhancedimage] =imagepreprocessing(image)

%Gray scale
grayscaleimage =rgb2gray(image);
%Enhance Image quality
enhancedimage =image;
%enhancedimage = imadjust(image,[.2 .3 0; .6 .7 1],[]);
%Binery form & creat mask on background and focus on object.

[BW,maskedRGBImage] = createMask(enhancedimage);