# STSTNet (Shallow Triple Stream Three-dimensional CNN)

A shallow network is designed to extract the high level features of the facial micro-expression details.
STSTNet is a two-layer neural network that is capable to learn the features from three optical flow features (i.e., 1) optical strain; 2) horizontal optical flow images, and; 3)vertical optical flow images) computed from the onset and apex frames from each video.
STSTNet is able to exhibit the UAR recognition results of 76.05\%, 70.13\%, 86.86\% and 68.10\% in composite, SMIC, CASME II and SAMM databases, respectively. 



Software is written and tested using Matlab 2018b, toolbox required:
1) Deep Learning Toolbox
2) Parallel Computing Toolbox 
3) Computer Vision System Toolbox

The files include:
1) main.m : Script which trains and tests the STSTNet (You may modify the input data, number of epochs, mini-batch size and the learning rate)
2) STSTNet.mat : The STSTNet architecture design
3) video442subName.txt : List of subject's name to validate the recognition performance in leave-one-subject-out cross validation (LOSOCV) 
4) input : Input data (28x28x3) arranged in LOSOCV manner. Please download from https://bit.ly/2S35u05

