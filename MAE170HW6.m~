% MAE 170 Homework 6 MATLAB component

% Sam Hince
% 19295309

%% P10.5

clc;
clear;

sys = tf([3.75],[0.1,1.015,0.15]) % for assigned version of the problem
%sys = tf([3.75],[0.15,1.0225,0.15]) % for origional version to compare to solutions provided

% Add PO and settling time definitions
zeta = 0.5912;
zetaWn = 2.667;

PO=[0, -16 * zeta / sqrt(1-zeta^2)]; 
ts=[-zetaWn, -zetaWn];              

% create plot
hold on 

h = rlocusplot(sys);
p = getoptions(h); % Get options for plot.
p.Xlim = [-10,1]; % Change title in options.
p.Ylim = [-10,10]; % Change title in options.
setoptions(h,p); % Apply options to plot.

plot(PO,[0,16],'--',PO,[0,-16],'--');  % add perfect overshoot criteria
plot(ts,[16,-16],'--');                % add settling time criteria
hold off

rlocfind(sys)                       % make interactive

%% P10.5 part 2

clc;
clear;

L = tf([60.76],[1,10.15,1.5])
sys = feedback(L,1)

stepinfo(sys)
[y,t]=step(sys);
ess=y(length(y))

%% P10.33

clc;
clear;

sys = tf([8],[0.0268,0.71,1,0]) % for assigned version of the problem
%sys = tf([8],[0.1,2.05,1,0]) % for origional version to compare to solutions provided

% Add PO and settling time definitions
zeta = 0.5;
zetaWn = 2.5;

PO=[0, -16 * zeta / sqrt(1-zeta^2)]; 
ts=[-zetaWn, -zetaWn]; 

hold on 
h = rlocusplot(sys);
p = getoptions(h); % Get options for plot.
p.Xlim = [-4,1]; % Change title in options.
p.Ylim = [-4,4]; % Change title in options.
setoptions(h,p); % Apply options to plot.

plot(PO,[0,8],'--',PO,[0,-8],'--')  % add perfect overshoot criteria
plot(ts,[8,-8],'--')                % add settling time criteria
hold off

rlocfind(sys)                       % make interactive




%% AP10.1a

clc;
clear;

hold on
sys = tf([1],[1,5,4,0])
rlocus(sys)
sgrid
hold off

[K,poles] = rlocfind(sys)

%% AP10.1b

clc;
clear;

L = tf([95.68,129.168],[1,19.25,75.25,57,0])
sys = feedback(L,1)

stepinfo(sys)
step(sys)

%% AP10.4

clc;
clear;

sys = tf([33.64],[1,8.004,33,64]) % for assigned version of the problem

stepinfo(sys)
step(sys)