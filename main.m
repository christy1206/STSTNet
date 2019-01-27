%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  This script is to perform the micro-expression recognition using STSTNet with LOSOCV protocol.
%  Reference:
%  xxxxxxxx
%
%  The files include:
%  1) main.m : Script which trains and tests the STSTNet 
%  2) STSTNet.mat : The STSTNet architecture design
%  3) video442subName.txt : List of subject's name  
%  4) input : Input data (28x28x3) arranged in LOSOCV manner
%
%  Matlab version was written by Sze Teng Liong and was tested on Matlab 2018b
%  If you have any problem, please feel free to contact Sze Teng Liong (stliong@fcu.edu.tw)
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Read the 68 subject names
fid = fopen('video442subName.txt'); 
garbage = textscan(fid,'%s','delimiter','\n');
subName =garbage{1}; 

% Load STSTNet
load ('STSTNet.mat')

% Network configuration 
opts = trainingOptions('adam', 'InitialLearnRate', 0.00005, 'MaxEpochs', 500, 'MiniBatchSize', 256,'Plots','training-progress');

% LOSOCV train and test
for nSub = 1:length(subName)
    % Read train images and labels
    cd (['input\' , subName{nSub,:}]);
    trainingImages = imageDatastore('u_train', 'IncludeSubfolders', true, 'LabelSource', 'foldernames'); 
    % Train model
    myNet = trainNetwork(trainingImages, STSTNet,opts);
    cd ('..\..')
    
    % Read test images and labels
    cd (['input\' , subName{nSub,:}])    
    testImages = imageDatastore('u_test', 'IncludeSubfolders', true, 'LabelSource', 'foldernames');
    desiredLabels =  testImages.Labels;
    % Test images using trained model
    predictedLabels = classify(myNet, testImages);
    cd ('..\..')
end
