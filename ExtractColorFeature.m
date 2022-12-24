function [H,mean_cluster_value] = ExtractColorFeature(EnhancedImage)
% Color Histogram
H=histogram(EnhancedImage);


% Color Clustering Technique
 [mean_cluster_value]=Color_Detection(EnhancedImage);
 
