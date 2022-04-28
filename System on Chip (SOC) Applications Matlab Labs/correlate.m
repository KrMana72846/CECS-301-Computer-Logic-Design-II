function [rho] = correlate(k, x, orig_y)
% correlate.m - How much are 2 sequences alike?
% Usage: [rho] = correlate(k, x, y);
% inputs: k = shift (integer between 0 and length(y)-1)
% x, y = the sequences to correlate
% output: rho = the correlation coefficient -1..0..1
% Note: This function assumes length(x) = length(y).
N = length(x);
y = [orig_y(k+1:length(orig_y)), orig_y(1:k)]; % Shift y by k units
sxx = x*x.' - sum(x)*sum(x)/N;
syy = y*y.' - sum(y)*sum(y)/N;
sxy = x*y.' - sum(x)*sum(y)/N;
rho = sxy / sqrt(sxx*syy); % Correlation coefficient for lag k