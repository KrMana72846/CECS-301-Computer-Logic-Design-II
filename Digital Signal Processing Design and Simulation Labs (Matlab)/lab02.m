% Kenny Khut
% CECS 463 Fall 2020
% Lab 02
% Date: September 13, 2020
clear all; close all; clc; format compact;
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);
addpath('C:\Users\Kenny\Desktop\CECS 463\Assignments\Labs\functions',path);
%% P1
% Generate and plot signal samlples using the stem function.

% A)
n1 = -10:10; x1 = zeros(1,length(n1));
for k = -5:5
    x1 = x1 + exp(-abs(k))*impseq(2*k ,-10,10);
end
figure(); subplot(2,1,1); stem(n1,x1)
title('Sequence x_1(n)'); xlabel('n'); ylabel('x_1(n)');

% B)
n2 = -200:200; x2 = 2*sin(0.01*pi*n2).*cos(0.5*pi*n2);
%end

subplot(2,1,2); stem(n2,x2)
title('Sequence x_2(n)'); xlabel('n'); ylabel('x_2(n)');

%% P2
% Generate the following random sequences and obtain their 
% histogram using the hist function with 100 bins. 

% A)
y1 = 2*rand(1,100000);
figure(); subplot(2,1,1);
[h1,x1] = hist(y1,100); bar(x1,h1);
xlabel('interval'); ylabel('number of elements');
title('Histogram of sequence x_1(n) in 100 bins');

% B)
n1 = rand(1,100000) - 0.5; n2 = rand(1,100000) - 0.5;
y2 = n1 + n2 + n2 + n2;
subplot(2,1,2);
[h2,x2] = hist(y2,100); bar(x2,h2);
xlabel('interval'); ylabel('number of elements');
title('Histogram of sequence x_2(n) in 100 bins');

%% P3
% Generate the following periodic sequences and plot their samples 
% (using the stem function) over the indicated number of periods. 

% A)
n1 = 0:21; x1 = exp(0.1*n1).*(stepseq(0,0,21)-stepseq(20,0,21));
x1 = x1'*ones(1,3); x1 = (x1(:))'; n1 = -22:43;
figure(); subplot(2,1,1);
stem(n1,x1,'filled')
title('Sequence x_1(n)'); xlabel('n'); ylabel('x_1(n)');
% B)
n2 = 0:24; y1 = [1 2 3]; y1 = y1'*ones(1,9); y1 = (y1(:))';
y2 = [1 2 3 4]; y2 = y2'*ones(1,7); y2 = (y2(:))';
x2 = y1(1:25) + y2(1:25);
subplot(2,1,2);
stem(n2,x2,'filled')
title('Sequence x_2(n)'); xlabel('n'); ylabel('x_2(n)');
%% P4
% Let x(n) ={2, 4,3,1*,5,4,7}. 
% Generate and plot the samples (use the stem function) of the following sequences. 

% A)
n = -3:3; x = [2,4,-3,1,-5,4,7];
[x11,n11] = sigshift(x,n,3); % shift by 3
[x12,n12] = sigshift(x,n,-4); % shift by -4
[x13,n13] = sigadd(2*x11,n11,3*x12,n12); % add two sequences
[x1,n1] = sigadd(x13,n13,-x,n); % add two sequences
figure(); subplot(2,1,1);
stem(n1,x1,'filled')
title('Sequence x_1(n)'); xlabel('n'); ylabel('x_1(n)');

% B)
n = -3:3; x = [2,4,-3,1,-5,4,7]; % given sequence x(n)
[x21,n21] = sigshift(x,n,-3); % shift sequence by -3
[x22,n22] = sigshift(x,n,2); % shift sequence by 2
[x23,n23] = sigmult(x21,n21,x22,n22); % multiply 2 sequences
[x24,n24] = sigfold(x,n); % fold x(n)
[x24,n24] = sigshift(x24,n24,1); % shift x(-n) by 1
[x25,n25] = sigshift(x,n,-1); % shift x(n) by -1
[x26,n26] = sigmult(x24,n24,x25,n25); % multiply 2 sequences
[x2,n2] = sigadd(x23,n23,x26,n26); % add 2 sequences
subplot(2,1,2);
stem(n2,x2,'filled')
title('Sequence x_2(n)'); xlabel('n'); ylabel('x_2(n)');

%% P5
% The complex exponential sequence ejωn or the sinusoidal sequence cos(ωn) are periodic if the normalized frequency f=ω/(2π) is a rational number; 
% that is, f =K/N, where K and N are integers. Generate Plot.

% A)
n1 = -100:100; x1 = exp(0.375*j*pi*n1);
figure(); subplot(2,1,1);
stem(n1,real(x1),'filled')
xlabel('n'); ylabel('Imag(x_1(n))');
title(['Imaginary part of sequence x_1(n) = ' ...
'exp(0.375 \times j \times pi \times n) ' newline ...
' Period = 8, K = 1, N = 8']);

% B)
n2 = -20:20; x2 = cos(0.375*n2);
subplot(2,1,2);
stem(n2,real(x2),'filled')
xlabel('n'); ylabel('x_2(n)');
title(['Sequence x_2(n) = cos(0.1 \times n)' newline ...
' Period = 8, K = 1, N = 8']);

%% P6
% Using your my_evenodd function, decompose the following sequences into their even and odd components. 
% Plot these components using the stem function and subplot the even and odd parts.

% A)
n1 = -8:12; x1 = exp(0.1*n1).*(stepseq(-5,-8,12) - stepseq(10,-8,12));
[e1,o1,m1] = evenodd(x1,n1);
figure(); subplot(2,1,1);
stem(m1,e1,'filled');
xlabel('n'); ylabel('x_e(n)');
title('Even part of x_1(n)');
subplot(2,1,2);
stem(m1,o1,'filled');
xlabel('n'); ylabel('x_o(n)');
title('Odd part of x_1(n)');

% B)
n2 = 0:100; x2 = exp(-0.05*n2).*sin(0.1*pi*n2 + pi/3);
[e2,o2,m2] = evenodd(x2,n2);
figure(); subplot(2,1,1);
stem(m2,e2,'filled');
xlabel('n'); ylabel('x_e(n)');
title('Even part of x_2(n)');
subplot(2,1,2);
stem(m2,o2,'filled');
xlabel('n'); ylabel('x_o(n)');
title('Odd part of x_2(n)');
