% Kenny Khut
% CECS 463 Fall 2020
% Lab 04
% Date: October 6, 2020
clear all; close all; clc; format compact;
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);
addpath('C:\Users\Kenny\Desktop\CECS 463\Assignments\Labs\functions',path);

%% Problem 1
% P 4.1 
[delta,n]=impseq(0,0,7);

% a) x(n) = (0.8)^n u(n-2) 1/(1-2z^-1)
b = [0 0 0.64]; a = [1 -0.8];
x1a = filter(b,a,delta);
x1b = ((0.8).^(n)).*stepseq(2,0,7);
disp("Problem 1a" + newline)
disp("Original Problem:");
disp(x1a)
disp("Verification:")
disp(x1b)
disp("ROC = |z| > 0.8" + newline)

% b) x(n) = (n+1)*(3)^n u(n) 1/(1-z^-1)
b = [1 -3]; a = [1 -9 27 -27];
x2a = filter(b,a,delta);
x2b = (n+1).*(3.^n).*stepseq(0,0,7);

disp("Problem 1b" + newline)
disp("Original Problem:");
disp(x2a)
disp("Verification:")
disp(x2b)
disp("ROC = |z| > 3")

%% Problem 2
% P 4.3
[delta,n]=impseq(0,0,7);
[u,n2] = stepseq(0,0,7);

% a)x(n) =3(0.75)^n cos(0.3πn)u(n) + 4(0.75)^n sin(0.3πn)u(n)
b = [3 (3*sin(0.3*pi)-2.25*cos(0.3*pi))]; a = [1 -1.5*cos(0.3*pi) 0.5625];
x1a = filter(b,a,delta);
x1b = 3*(((0.75).^n2).*cos(0.3*pi*n2)).*u+4*(((0.75).^n2).*sin(0.3*pi*n2)).*u ;

disp("Problem 1a" + newline)
disp("Original Problem:");
disp(x1a)
disp("Verification:")
disp(x1b)
disp("ROC = |z| > 0.75" + newline)
figure();
zplane(b,a)

title('Pole-Zero plot 2a)');

% b) x(n) = n^2(2/3)^(n-2) u(n-1)
b = 3/2*[0 1 0 -4/9]; a = [1 -8/3 8/3 -32/27 16/81];
%[delta,n]=impseq(0,0,8);
%[u,n2] = stepseq(1,0,8); 
x2a = filter(b,a,delta);
x2b = ((n.^2).*((2/3).^(n-2))).*u;

disp("Problem 1b" + newline)
disp("Original Problem:");
disp(x2a)
disp("Verification:")
disp(x2b)
disp("ROC = |z| > 2/3")
figure();
zplane(b,a)
title('Pole-Zero plot 2b)');

%% Problem 3

% Write Down
% P 4.5
% 1,3
%% Problem 4

% Write Down
% P 4.7
% 1,4
%% Problem 5
% P 4.9

% a) X(z) =(1-2z^-1+3z^−2-4z^−3)(4 + 3z^−1 - 2z^−2+ z^−3)
disp('Problem 5a')
n1 = 0:3; y1 = [1 -2 3 -4]; n2 = 0:3; y2 = [4 3 -2 1];
[x1,n] = conv_m(y1,n1,y2,n2)

% b) X(z)=(z^-1-3z^-3+2z^-5+5z^-7-z^-9)(z+3z^2+2z^3+4z^4)
disp('Problem 5b')
n1 = 0:9; y1 = [0 1 0 -3 0 2 0 5 0 -1]; n2 = -4:0; y2 = [4 2 3 1 0];
[x2,n] = conv_m(y1,n1,y2,n2)
