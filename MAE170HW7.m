% MAE 170 HW 7

% Sam Hince 
% 19295309

% reading through this homework assignment I must once again express my
% dissapointment in the way material is presented in this course. The
% problems are not even organized in the correct order or orientation in
% the assignment document. Discussions are real lectures, but not
% discussions and i dont even know what lectures are at this point. Its
% like watching a fish bowl. 

clc;
clear;

sys = tf([1],[0.75,3.25,1])
bode(sys)