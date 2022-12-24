function [Geometrical_Features ,Color_Features] = Imagefeaturesextraction (FilePath)
%Image acquasition
image = imageacquasition(FilePath);
%Image Preprocessing
[BW,grayscaleimage,EnhancedImage] =imagepreprocessing(image);
%Calculate Geometrical Features

[area,centroid,gray_image,Distance,ratio]=ExtractGeomatricalFeatures(BW,grayscaleimage);
%Calcutae Color clustering Features.
[H,mean_cluster_value] = ExtractColorFeature(EnhancedImage);
save('buffer.mat','H','-append');
Geometrical_Features=[area,centroid,transpose(gray_image(1:1500,:)),Distance,ratio];
File=load('buffer');
Color_Features=[File.H.Values,transpose(mean_cluster_value)];