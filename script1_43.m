clear all
close all

x = linspace(-1,1,1000);
t = linspace(0,10,100);


# Makes animation of the time evolution of the real 
# and imaginary parts plus modulus and argument. 
for j = 1:length(t)

#Time evolution of time dependent wave equation where n=3.

%  plot(x,Lpsi_n(3,x,t(j)))
%  title([num2str(t(j))])
%  axis([0 1 -2 2])
%  pause(0.3)

#Time evolution of the absolute value.
  
%  out = abs(Lpsi_n(3,x,t(j)));
%  plot(x,out)
%  title([num2str(t(j))])
%  axis([-1 1 0 2])
%  pause(0.1)

#Time evolution of the argument.

%  out = arg(Lpsi_n(3,x,t(j)));
%  plot(x,out)
%  title([num2str(t(j))])
%  axis([-1 1 -3 3])
%  pause(0.1)

#Finding the periodic condition.

%  plot(x,Lpsi_n(3,x,t(1)),x,Lpsi_n(3,x,t(1)+0.14014))

#Using subplot in a for loop showing the real and imaginary parts of the wave
#function.

% subplot(2,1,1)
% plot(x,real(Lpsi_n(3,x,t(j))))
% title(['Real part with time =' num2str(t(j))])
% axis([-1 1 -1.5 1.5])
% pause(0.5)

% subplot(2,1,2)
% plot(x,imag(Lpsi_n(3,x,t(j))))
% title(['Imag part with time=' num2str(t(j))])
% axis([-1 1 -1.5 1.5])
% pause(0.5)

#Plotting the real and imaginary parts of the wave function in one plot.

% plot(x,real(Lpsi_n(3,x,t(j))),x,imag(Lpsi_n(3,x,t(j))))
% title(['Real and Imag part at time=' num2str(t(j))])
% axis([-1 1 -1.5 1.5])
% pause(0.5)
end