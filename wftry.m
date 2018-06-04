clear all
close all

%Constants
L = 4;
A = 4;
C = 1;
V_0 = 2;

%Energy
E = 1;

%Position
x = linspace(-100,100,1000);

% k and l
k = sqrt(2.*(V_0 - E));
l = sqrt(2.*E);


% Wave functions
wf1 = A.*exp(k.*x(1:490));
wf2 = C.*cos(l.*x(491:510));
wf3 = A.*exp(-k.*x(511:1000));
wf = [wf1 wf2 wf3];

%plot
plot(x,wf)

%plot
n = linspace(0,2.*pi,100);
e = linspace(0,7,100);