function [Fruit,Quality,FruitScore,QualityScore] = Fruitclassification(FilePath)

%Feature Extraction
[Geometrical_Features ,Color_Features] = Imagefeaturesextraction (FilePath);

%Feature KNN Classification