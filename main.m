clc
clear all
fid = fopen('video442Names.txt');
garbage = textscan(fid,'%s','delimiter','\n');
vid_list =garbage{1}; 

fid = fopen('video442subName.txt');
garbage = textscan(fid,'%s','delimiter','\n');
subName =garbage{1}; 

load ('STSTNet.mat')
opts = trainingOptions('adam', 'InitialLearnRate', 0.00005, 'MaxEpochs', 5, 'MiniBatchSize', 256,'Plots','training-progress');

for nSub = 1:length(subName)
    cd (['input\' , subName{nSub,:}]);
    trainingImages = imageDatastore('u_train', 'IncludeSubfolders', true, 'LabelSource', 'foldernames');
    myNet = trainNetwork(trainingImages, STSTNet,opts);
    cd ('..\..')
    cd (['input\' , subName{nSub,:}])
    testImages = imageDatastore('u_test', 'IncludeSubfolders', true, 'LabelSource', 'foldernames');
    desiredLabels =  testImages.Labels;
    predictedLabels = classify(myNet, testImages);
    cd ('..\..')
end