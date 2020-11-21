% MAE 170 Homework 5

% Created by Sam Hince
% 11/20/2020

%% E7.15

clc;
clear;

sys = tf([1,4.71,3.71],[1,0,0,0]);
rlocus(sys)

%% P7.1

%% a
clc;
clear;

sys = tf([1],[1,18,80,0])
rlocus(sys)

%% b
clc;
clear;

sys = tf([1],[1,4,6,4])
rlocus(sys)

%% c
clc;
clear;

sys = tf([1,5],[1,11,10,0])
rlocus(sys)

%% d
clc;
clear;

sys = tf([1,4,8],[1,1,0,0])
rlocus(sys)

%% % P7.5 % %%
clc;
clear;

sys = tf([25,25.75,0.75],[1,9.04,0.376,0.208,0.576])

zeta = 0.707;
PO=[0, -8 * zeta / sqrt(1-zeta^2)];

rlocus(sys) % create root locuc
hold on 
plot(PO,[0,8],'--',PO,[0,-8],'--')  % add perfect overshoot criteria
hold off

rlocfind(sys)                       % make interactive

%% CP7.2 %%
clc;
clear;

sys=tf([1,-2,2],[1,3,2,0]) % imput transfer function given in problem
rlocus(sys) % create a plot of the root locus 
rlocfind(sys) % allow plot to have a point selected

% select a point whith the highest k value where the plot ahs not crossed
% the imaginary axis 

% note the the value of K = 0.79


%% CP7.8 %%
clc;
clear;

sys=tf([1,5],[1,0,0])               % imput transfer function given in problem

%Add PO and settling time definitions

zeta = 0.6;
zetaWn = 1;

PO=[0, -8 * zeta / sqrt(1-zeta^2)]; % see paper notes
ts=[-zetaWn, -zetaWn];              % see paper notes

%create plot 

rlocus(sys) % create root locuc
hold on 
plot(PO,[0,8],'--',PO,[0,-8],'--')  % add perfect overshoot criteria
plot(ts,[8,-8],'--')                % add settling time criteria
hold off

rlocfind(sys)                       % make interactive

% gives result of 7.1585
