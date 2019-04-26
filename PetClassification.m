%%
load ('classifier.mat')
load ('convnet.mat')
featureLayer = 'fc7';

%%
newImagePath = 'C:\Users\esoot\Pictures\curve1.png';
newImage = readAndPreprocessImage(newImagePath);
imageFeatures = activations(convnet, newImage, featureLayer, 'OutputAs', 'rows');
label = predict(classifier, imageFeatures)