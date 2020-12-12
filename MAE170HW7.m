% MAE 170 HW 7

% Sam Hince 
% 19295309

% reading through this homework assignment I must once again express my
% dissapointment in the way material is presented in this course. The
% problems are not even organized in the correct order or orientation in
% the assignment document. Discussions are real lectures, but not
% discussions and i dont even know what lectures are at this point. Its
% like watching a fish bowl. 

%% problem 8.3

clc;
clear;

sys = tf([4,11.18],[1,4,11.18])
bode(sys)

%% problem 3a

clc;
clear;

sys = tf([1],[0.75,3.25,1])
bode(sys)

%% problem 3b

clc;
clear;

sys = tf([0.1,1],[1,0,0])
bode(sys)

%% problem 3c

clc;
clear;

sys = tf([1,-5],[1,3,5])
bode(sys)

%% problem 3d

clc;
clear;

sys = tf([50,300],[1,11,24,0])
bode(sys)