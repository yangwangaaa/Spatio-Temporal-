% Copyrigth to Chittaranjan Hens, Uzi Harush and Baruch Barzel's lab
%% add paths
clear all;
delete A.mat;
delete Degree_Dist_T.mat;
addpath('.\Networks');
addpath('.\Model');
addpath('.\Model\Integration R_1');
addpath('.\Model\Integration R_2');
addpath('.\Model\Integration N');
addpath('.\Model\Integration P');
addpath('.\Model\Integration M');
addpath('.\Model\Integration E');
addpath('.\Plot');
addpath('.\Plot\Fig3g-l');
addpath('.\Plot\Fig4a-c');
addpath('.\Plot\Fig4d-f');
addpath('.\Plot\Fig6i-k');
mystring1 = ['Which Networks do you want to use? \n'...
            '1 - SF\n','2 - SF1\n','3 - SF2\n'... 
            '4 - ER\n','5 - PPI1\n', '6 - PPI2\n'...
            '7 - PPI3\n','8 - PPI4\n','9 - Brain\n'...
            '10 - ECO1\n','11 - ECO2\n','12 - UCIonline\n'...
            '13 - Epoch\n','14 - ATN\n', '15 - Epinions\n'...
            '16 - A_300_gamma3\n'];
networks=input(mystring1);
A= Switch_networks(networks);
save A.mat A;
mystring2 = ['Which model do you wish to analyze? \n'...
            '1 - R_1\n','2 - R_2\n','3 - N\n'...
            '4- P\n', '5- M\n','6- E\n'];   
model_type=input(mystring2);
Switch_integration(model_type);

Switch_plot(model_type);
