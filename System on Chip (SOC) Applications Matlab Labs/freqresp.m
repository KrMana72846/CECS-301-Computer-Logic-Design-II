function [H] = freqresp(b,a,w)
% Frequency response function from difference equation
% [H] = freqresp(b,a,w)
% H = frequency response array evaluated at w frequencies
% b = numerator coefficient array
% a = denominator coefficient array (a(1)=1)
% w = frequency location array
m = 0:length(b)-1; l = 0:length(a)-1; % index arrays m and l
num = b * exp(-1j*m'*w); % Numerator calculations
den = a * exp(-1j*l'*w); % Denominator calculations
H = num ./ den; % Frequency response

end
