% Kenny Khut
% CECS 463 Fall 2020
% Lab 01
% Date: September 1, 2020
clear all; close all; clc; format compact;
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);

%% P1
% Generate a random complex number z
rand_int = @ (n) round(n*rand());
n=10; z=rand_int(n) + 1j*rand_int(n);
fprintf('Random Number: %4.2f\n',z)
%% P2
% Generate complex points using random complex numbers and plot it as a blue arrow

rand_int = @ (n) round(n*rand( ) );
n=10; z1 = rand_int(n) + 1j*rand_int(n); z2 = -rand_int(n) - 1j*rand_int(n);
figure(1); axis( [ -n, n, -n, n ] );
arrow([real(z1),imag(z1)], [real(z2),imag(z2)], 'Color', 'b');
title('Points In The Complex Plane'); xlabel('REAL'); ylabel('IMAGINARY');

%% P3
% Calculate the area of a triangle in the complex plane as well as area of a quadrilateral

rand_int = @ (n) round(n*rand());
n=10;
z1=rand_int(n) + 1j*rand_int(n); z2=rand_int(n) + 1j*rand_int(n);
z3=rand_int(n) + 1j*rand_int(n); z4=rand_int(n) + 1j*rand_int(n);

area_triangle=@(z1,z2,z3) 0.5*abs( real(z1)*(imag(z2)-imag(z3)) ...
+real(z2)*(imag(z3)-imag(z1)) ...
+real(z3)*(imag(z1)-imag(z2)) );

area_quadrilateral = @(z1,z2,z3,z4) area_triangle(z1,z2,z3) + area_triangle(z1,z3,z4);

fprintf('Area of Triangle: %4.2f\n',area_triangle(z1,z2,z3))
fprintf('Area of Quadrilateral: %4.2f\n',area_quadrilateral(z1,z2,z3,z4))

%% P4
% Create a complex vector z with an origin point (0,0)

z1=rand_int(n) + 1j*rand_int(n); z2=rand_int(n) + 1j*rand_int(n);
disp(z1)
disp(z2)
a1 = (real(z2)-real(z1)); a2 =(imag(z2)-imag(z1));
fprintf('V = (%4.2f) + j(%4.2f)\n',a1,a2);
figure(1); axis( [ -n, n, -n, n ] );
arrow([0,0], [a1,a2], 'Color', 'b');
title('Points In The Complex Vector');

%% P5
% Generate four complex numbers, find the area, and determine if the figure is a triangle, convex, or concave.

z1=rand_int(n) + 1j*rand_int(n); z2=rand_int(n) + 1j*rand_int(n);
z3=rand_int(n) + 1j*rand_int(n); z4=rand_int(n) + 1j*rand_int(n);

figure(); hold on;
line([-10,10], [0,0],'color','k');
line([0,0], [-10,10],'color','k');
axis([-10,10,-10,10]);
plot(real(z1),imag(z1),'r*');
plot(-real(z2),imag(z2),'b*');
plot(-real(z3),-imag(z3),'g*');
plot(real(z4),-imag(z4),'m*');
plot(real(z1),imag(z1),'r*');
line([real(z1),-real(z2)], [imag(z1),imag(z2)],'color','k');
line([-real(z2),-real(z3)], [imag(z2),-imag(z3)],'color','k');
line([-real(z3),real(z4)], [-imag(z3),-imag(z4)],'color','k');
line([real(z4),real(z1)], [-imag(z4),imag(z1)],'color','k');

area = num2str(area_quadrilateral(z1,z2,z3,z4),'%4.2f');

p1 = real(z1)*imag(z2) - imag(z1)*real(z2); p2 = real(z2)*imag(z3) - imag(z2)*real(z3);
p3 = real(z3)*imag(z4) - imag(z3)*real(z4); p4 = real(z4)*imag(z1) - imag(z4)*real(z1);

if p1 && p2 && p3 && p4 > 0
    polygon = 'CONVEX'; 
elseif p1 && p2 && p3 && p4 < 0
    polygon = 'CONVEX';
else
    polygon = 'CONCAVE';
end

title([polygon,' Quadrilateral: Area = ',area]);


