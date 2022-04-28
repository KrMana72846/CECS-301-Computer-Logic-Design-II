function [X] = dtft(x,n,w) % Computes Discrete-time Fourier Transform
% [X] = dtft(x,n,w)
% X =DTFT values computed at w frequencies
% x =finite duration sequence over n
% n =sample position vector
% w =frequency location vector
X = exp(-1i.*w'*n)  * x';
end

