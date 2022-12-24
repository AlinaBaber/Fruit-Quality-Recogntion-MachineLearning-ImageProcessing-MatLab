function [area,centroid,gray_image,Distance,ratio]=ExtractGeomatricalFeatures(BW,grayscaleimage)
% Calculate Area of binery image
area=bwarea(BW);
% Calculate Centroid of binery image
[row,column]=find(BW==1);
mean_row=mean(row);
mean_col=mean(column);
centroid=[mean_row,mean_col];
% Calculate perimeters of binery image
perimeters =bwperim(BW);
% Calculate Distance of binery Image
gray_image=grayscaleimage(perimeters);
Distance = pdist(gray_image);
Distance = mean(pdist(gray_image));
% Calulate Ratio of binery image
ratio = 4 * 3.1714 * area / ( Distance.^2 );
GeomatricalFeatures=[];