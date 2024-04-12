<h1 align="center">Deep Neural Network Based Fault Classification and Location Detection in Power Transmission Line</h1> 


This repository contains the official implementation of our research work that has been published as a conference paper in ***12th International Conference on Electrical and Computer Engineering*** [(ICECE)](https://icece.buet.ac.bd/) 2022. You can read our paper tilted "***Deep Neural Network Based Fault Classification and Location Detection in Power Transmission Line***" in [IEEE Xplore](https://ieeexplore.ieee.org/document/10088794). Transmission lines constitute a significant portion of any power system and faults in these overhead transmission lines are common phenomena. Swift and efficient fault classification along with the identification of the exact location of fault occurrence, to isolate the affected region, is extremely essential for ensuring power system reliability. In our paper, we proposed a Deep Neural Network (DNN) based approach to address the problem of transmission line fault detection, classification, and fault location identification. 

## Requirements 
To implement the codes, following libraries are need: 
* matplotlib
* numpy
* pandas
* scikit-learn
* seaborn
* tensorflow
* keras

The exact versions used for this repository is given in [requirements.txt](requirements.txt) file. However, the latest versions of these libraries should work or the user can adjust the version if needed. If Colab is used, the default versions of these libraries should work. If local environemnt is used, the libraries can be installed using the following code:
```
pip install -r requirements.txt
```
## Data
A sample dataset is provided in the [Data](Data) folder to implement the codes. Details of the matlab simulation of the transmission line model and dataset creation in given in [SImulink](Simulink) folder. 

## DNN Model:

Model strudture for classifying the faults:

<img src="https://github.com/Sheikh0541/ICECE-2022-DNN-For-Transmission-Line/assets/69375725/143f17fc-b8ec-48af-8ae7-638937acfb0a" alt="flow9" width="500"/>

Model structure for locating the fault in transmission line:

<img src="https://github.com/Sheikh0541/ICECE-2022-DNN-For-Transmission-Line/assets/69375725/b009aeb6-8f38-4007-9406-656780732416" alt="flow9" width="500"/>


## Code 
There are two seperate notebooks given in the [Code](Code) folder, one for classifying the fault types and another for detecting the location of the fault (in km) from the corresponding bus. Uning the sample dataset provided in the [Data](Data) folder, the codes can be implemented and the results can be produced as presented in the paper.  

## Citation 
If you find our work helpful or use our work, please cite us. 

Plain text (IEEE Format): 
```
S. I. Ahmed, M. F. Rahman, S. Kundu, R. M. Chowdhury, A. O. Hussain and M. Ferdoushi,
"Deep Neural Network Based Fault Classification and Location Detection in Power Transmission Line,"
2022 12th International Conference on Electrical and Computer Engineering (ICECE),
Dhaka, Bangladesh, 2022, pp. 252-255, doi: 10.1109/ICECE57408.2022.10088794.
```
BibTeX Format:
```
@INPROCEEDINGS{10088794,
  author={Ahmed, Sheikh Iftekhar and Rahman, M. Fahmin and Kundu, Shomen and Chowdhury, Raihan Mahmud and Hussain, Auronno Ovid and Ferdoushi, Munia},
  booktitle={2022 12th International Conference on Electrical and Computer Engineering (ICECE)}, 
  title={Deep Neural Network Based Fault Classification and Location Detection in Power Transmission Line}, 
  year={2022},
  volume={},
  number={},
  pages={252-255},
  keywords={Deep learning;Power transmission lines;Fault detection;Computational modeling;Neural networks;Fault location;Electrical fault detection;Deep Neural Network (DNN);Mean Absolute Error (MAE);Cross-entropy;Fault Analysis;Power System},
  doi={10.1109/ICECE57408.2022.10088794}}
```
