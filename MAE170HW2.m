% MAE 170 Homework 2

% Created by Sam Hince
% 11/20/2020

% Problem CP2.6

clc; clear;

sys0 = tf(4)
sys1 = tf(1,[1 1])
sys2 = tf([1 0 0],[1 0 1])
sys3 = tf([4 2],[1 2 1])
sys4 = tf(1,[1 0 0])
sys5 = tf(50)
sys6 = tf([1 0 2],[1 0 0 14])

a = sys1 * sys2
b = parallel(a, sys3)
c = parallel(sys4, -sys5)
d = b * c
e = parallel(d, sys6)

sys = sys0 + e

pzmap(sys) 
