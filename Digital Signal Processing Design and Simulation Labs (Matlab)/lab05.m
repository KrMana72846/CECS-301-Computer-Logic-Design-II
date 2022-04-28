% Kenny Khut
% CECS 463 Fall 2020
% Lab 05
% Date: October 18, 2020
clear all; close all; clc; format compact;
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);
addpath('C:\Users\Kenny\Desktop\CECS 463\Assignments\Labs\functions',path);

%% Problem 1

nb = -2:3; b = [1 1 1 1 1 1]; na = -1:1; a = [1 2 1];
[p,np,r,nr] = deconv_m(b,nb,a,na)

%% Problem 2

b = [0,0,1]; a = [1,2,1.25,0.25];
[R,p,k] = residuez(b,a)

%% Problem 3

b = [1,-1/3,7/36];
a = [1,-5/12,-1/18,1/36];
figure();
zplane(b,a)
title('Pole-Zero plot');

%% Problem 4

b = [1,1];
a = [1,-0.5];
figure();
zplane(b,a)
title('Pole-Zero plot');

%% Problem 5
% p.24 pg.183
% Write Down problem