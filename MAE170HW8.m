% MAE 170 HW 8

% Sam Hince 
% 19295309

%% problem 8.3 

L = tf([1300],[1,42,80,0])

margin(L)
allmargin(L)

%% problem 9.28

clc;
clear;

L = tf([19],[1,1.9,0])
sys = feedback(L,1)
step(sys)

%% problem  P9.1 a

clc;
clear;

L = tf([1],[1,2.5,1])

nyquist(L)

%% problem  P9.1 b

clc;
clear;

L = tf([10,14,10],[1,-2,1])

nyquist(L)

%% problem  P9.1 c

clc;
clear;

L = tf([1,-10],[1,6,10])

nyquist(L)

%% problem  P9.1 d

clc;
clear;

L = tf([30,240],[1,6,8,0])

nyquist(L)