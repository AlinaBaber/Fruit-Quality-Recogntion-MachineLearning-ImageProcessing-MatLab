function Status = preparedataset(File_Path)
[pathstr,FileName,ext] = fileparts(File_Path);
[pathstr,quality,ext] = fileparts(pathstr) ;
[pathstr,fruit,ext] = fileparts(pathstr) ;
%Load File of data
File=load('fruits');
%Save FilePath
FilePath={File_Path};
File.FilePath(end+1)=FilePath; 
FilePath=File.FilePath;
save('fruits.mat','FilePath','-append');
%Save FileName

File_Name={FileName}; 
File.FileName(end+1)=File_Name; 
FileName=File.FileName;
save('fruits.mat','FileName','-append');
%Save Quality (Sub Folder)

File_quality={quality};
quality=[File.quality;File_quality]; 
save('fruits.mat','quality','-append');
%Save Fruite (First Folder)

File_fruit={fruit};
fruit=[File.fruit; File_fruit];
save('fruits.mat','fruit','-append');

%Feature Extraction
[Geometrical_Features ,Color_Features] = Imagefeaturesextraction (File_Path);

%Save feature dataset
File_Features1=Geometrical_Features;
features1=[File.features1; File_Features1];
save('fruits.mat','features1','-append');
File_Features2=Color_Features;
features2=[File.features2; File_Features2];
save('fruits.mat','features2','-append');
Status=' All Features are Extracted ,File is Prepared for Training';