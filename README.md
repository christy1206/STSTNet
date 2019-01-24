# STSTNet (Shallow Triple Stream Three-dimensional CNN)

A shallow network is designed to extract the high level features (i.e., optical flow guided features) to perform the facial micro-expression recognition on three emotion classes (positive, negative and surprise).

Example of micro-expressions:

<img src="https://drive.google.com/uc?export=view&id=1IOj1fh9hSHETGh6VzM7PljoPOj1Z3zWK" data-canonical-src="https://drive.google.com/uc?export=view&id=1IOj1fh9hSHETGh6VzM7PljoPOj1Z3zWK" width="250" height="250"  />  <img src="https://drive.google.com/uc?export=view&id=1PeW7wNzA-plqs7juD43XkSJDeXm9LRXv" data-canonical-src="https://drive.google.com/uc?export=view&id=1PeW7wNzA-plqs7juD43XkSJDeXm9LRXv" width="250" height="250"  />  <img src="https://drive.google.com/uc?export=view&id=1iXtn2dULrD5blNONdFdop8T84Ibqp4yN" data-canonical-src="https://drive.google.com/uc?export=view&id=1iXtn2dULrD5blNONdFdop8T84Ibqp4yN" width="250" height="250"  />  
SAMM (006_006_1_2), SMIC (s03_s03_po_11), CASME II (sub11_EP15_04f)

STSTNet is a two-layer neural network that is capable to learn the features from three optical flow features (i.e., 1) optical strain; 2) horizontal optical flow images, and; 3) vertical optical flow images) computed from the onset and apex frames from each video.

<img src="https://drive.google.com/uc?export=view&id=1IL9_xywe0nMhUITf6CuRZCx7npmaTq7b" data-canonical-src="https://drive.google.com/uc?export=view&id=1IL9_xywe0nMhUITf6CuRZCx7npmaTq7b" width="500" height="400" />

The recognition results achieved are:

<img src="https://drive.google.com/uc?export=view&id=1VOi50jSdoB0YgU-6YUzSLz3KhiXIDbnj" data-canonical-src="https://drive.google.com/uc?export=view&id=1VOi50jSdoB0YgU-6YUzSLz3KhiXIDbnj" width="600" height="150"/>

The databases include CASME II (145 videos), SMIC (164 videos) and SAMM (133 videos). "Full" is the composite database of the 3 databases (442 videos).


Software is written and tested using Matlab 2018b, toolbox required:
1) Deep Learning Toolbox
2) Parallel Computing Toolbox 
3) Computer Vision System Toolbox


The files include:
1) main.m : Script which trains and tests the STSTNet (You may modify the input data, number of epochs, mini-batch size and the learning rate)
2) STSTNet.mat : The STSTNet architecture design
3) video442subName.txt : List of subject's name to validate the recognition performance in leave-one-subject-out cross validation (LOSOCV) 
4) input : Input data (28x28x3) arranged in LOSOCV manner. Please download from https://bit.ly/2S35u05


The exact configuration of STSTNet is:
<img src="https://drive.google.com/uc?export=view&id=1BMcxSDxOKTU14iKRVDgMrrtW2trIrmrs" data-canonical-src="https://drive.google.com/uc?export=view&id=1BMcxSDxOKTU14iKRVDgMrrtW2trIrmrs" width="500" height="200" />
