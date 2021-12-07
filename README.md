# STSTNet (Shallow Triple Stream Three-dimensional CNN)

A shallow network is designed to extract the high level features (i.e., optical flow guided features) to perform the facial micro-expression recognition on three emotion classes (positive, negative and surprise).

Example of micro-expressions:

<img src="https://github.com/christy1206/biwoof/blob/pictures/006_006_1_2.gif" width="200" height="200"/> <img src="https://github.com/christy1206/biwoof/blob/pictures/s03_s03_po_11.gif" width="200" height="200"/> <img src="https://github.com/christy1206/biwoof/blob/pictures/sub11_EP15_04f.gif" width="200" height="200"/>

SAMM (006_006_1_2), SMIC (s03_s03_po_11), CASME II (sub11_EP15_04f)

STSTNet is a two-layer neural network that is capable to learn the features from three optical flow features (horizontal optical flow images, vertical optical flow images and optical strain) computed from the onset and apex frames from each video. Please find the source code for optical flow adopted in this experiment at http://www.ipol.im/pub/art/2013/26/

<img src="https://github.com/christy1206/STSTNet/blob/picture/flow.JPG" width="500" height="400"/>

The recognition results achieved are:

<img src="https://github.com/christy1206/STSTNet/blob/picture/result.JPG" width="600" height="150"/>

The databases include CASME II (145 videos), SMIC (164 videos) and SAMM (133 videos). "Full" is the composite database of the 3 databases (442 videos).


The exact configuration of STSTNet is:

<img src="https://github.com/christy1206/STSTNet/blob/picture/configuration.JPG" width="500" height="200"/>

## Matlab code
Software is written and tested using Matlab 2018b, toolbox required:
1) Deep Learning Toolbox
2) Parallel Computing Toolbox 
3) Computer Vision System Toolbox


The files include:
1) main.m : Script which trains and tests the STSTNet (You may modify the input data, number of epochs, mini-batch size and the learning rate)
2) STSTNet.mat : The STSTNet architecture design
3) video442subName.txt : List of subject's name to validate the recognition performance in leave-one-subject-out cross validation (LOSOCV) 
4) input : Input data (28x28x3) arranged in LOSOCV manner. The resized images of: 1) horizontal optical flow images; 2) vertical optical flow images, and; 3) optical strain, computed from the onset and apex frames. Please download from https://bit.ly/2S35u05 


## Python code

Pytorch framework is used to reproduce the result. Note that the results obtained are slightly lower from the original work. The result for Full (Composite) is UF1: 0.7209 and UAR: 0.725.

<b>Step 1)</b> Please download the dataset from from https://bit.ly/2S35u05 

<b>Step 2)</b> Place the files in the structure as follows:
>├─STSTNet_Weights <br>
>├─norm_u_v_os <br>
>├─main.py <br>
>├─requirements.txt <br>

<b>Step 3)</b> Installation of packages using pip

``` pip install -r requirements.txt ```

<b>Step 4)</b> SOFTNet Training and Evaluation

``` python main.py -- train False```


## If you use this method in your research, please cite:

@inproceedings{liong2019shallow,\
  title={Shallow triple stream three-dimensional cnn (ststnet) for micro-expression recognition},\
  author={Liong, Sze-Teng and Gan, YS and See, John and Khor, Huai-Qian and Huang, Yen-Chang},\
  booktitle={2019 14th IEEE International Conference on Automatic Face \& Gesture Recognition (FG 2019)},\
  pages={1--5},\
  year={2019},\
  organization={IEEE}\
}

If you have suggestions or questions regarding this method, please reach out to stliong@fcu.edu.tw

Thank you for your interest and support.
