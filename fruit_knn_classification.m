function Result=fruit_knn_classification(FilePath)
[Geometrical_Features ,Color_Features] = Imagefeaturesextraction (FilePath);
MFile= load('knnmodels');
%==================Speech Disorder======================================%
%----(1)----------Frequency--------------
[Category,Category_score,Category_cost] = predict(MFile.KNNStruct_features_fruit,Geometrical_Features);
%----(2)--------- Pitch Contour-----------
[Quality,Quality_score,Quality_cost] = predict(MFile.KNNStruct_features_quality,Color_Features);
 Result=[Category,Quality];