function x2 = circfold(x1,N)
% Circular folding with respect to N
% ----------------------------------
% function x2 = circfold(x1,N)
% x2(n) = x1((-n) mod N)
%
if length(x1) > N; error('N < length(x)');end
x1=[x1 zeros(1,N-length(x1))];
n=(0:1:N-1);
x2=x1(mod(-n,N)+1);