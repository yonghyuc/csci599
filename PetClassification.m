%%
load ('classifier.mat')
load ('convnet.mat')
featureLayer = 'fc7';

%%
newImagePath = 'C:\DeepLearning\data\PetImages\validation\cats\1050.jpg';
newImage = readAndPreprocessImage(newImagePath);
imageFeatures = activations(convnet, newImage, featureLayer, 'OutputAs', 'rows');
label = predict(classifier, imageFeatures)