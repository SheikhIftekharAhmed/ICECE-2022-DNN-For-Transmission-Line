## Transmission Line Simulink Model

The simulink model used for fault simulation and dataset generation is shown in the following figure. It is constructed using Simscape Electrical toolbox in MATLAB.

<div style="text-align:center;">
<img src="https://github.com/Sheikh0541/ICECE-2022-DNN-For-Transmission-Line/assets/69375725/b3829b0c-2d5d-496a-90e9-93707ea2353e" width="900"/>
</div>

The model is a 4-bus 50 Hz system. Two of the buses, bus 1 and 4, are generator buses and the other two are load buses. Buses 1 & 2, 2 & 3, 3 & 4 are connected via 11 kV transmission lines of length 100 km. Static loads of 10, 15, and 5 MW have been added to buses 2, 3, and 4 respectively. Fault simulators have been added to each transmission line for simulating LG, LL, LLG and LLL type faults. The fault resistance is varied to 8 different values of 0.25, 0.5, 5, 10, 25, 50, 75, and 100 ohms.

## Dataset Generation

Our generated dataset contains two types of target labels. One is the distance of the fault location and the other is the type of fault. The fault type classes are LG, LL, LLG, LLL and no fault (labeled as None) and the classes are one-hot encoded. The fault distance in a transmission line is measured from it’s corresponding bus. RMS values of the three-phase voltages (Va, Vb, Vc) and currents (Ia, Ib, Ic) are taken as the input features. For transmission lines 1, 2, and 3, input voltages and currents are taken from bus 1, 2 and 3 respectively. The sampling frequency is set to 2000Hz which is a suitable rate for the power system. In a single run, we took data of one electrical cycle resulting in 40 samples for each phase of voltages and currents, and then calculated the RMS value of the samples. In each transmission line, faults are introduced at 17 different places, each 5 km apart. At each location, 4 types of faults are introduced along with a no-fault condition. For each type of fault, fault resistance is set to 8 different values, one at a time. Thus a total of 2040 sets of training data is generated which is used for training and testing the [classification DNN model](Code/Classification_model.ipynb) . However, for training the location detection DNN model, data with faulty conditions on each line are seperated, thus makng 544 data point for each line and the model has been tarined and tested seperatrly for each line. See the code for [location detection model](Code/Distance_model.ipynb). 
