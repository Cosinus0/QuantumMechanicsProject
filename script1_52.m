#

clear all
close all

#Initialise wave function variables.
x = linspace(0,1,100);
t = linspace(0,10,1000);
n = 2;

#Initialise line variables.
a = [];
b = [];
c = [];

#Initialise normalised cn values.
%cn = [2+i 1-i]; #cn from Ulfs tutorial.
cn = [sqrt(0.5) sqrt(0.5)];#cn where c1=c2.
cn = cn/norm(cn);

for it = 1:length(t)
  delete(a)
  delete(b)
  delete(c)
  
  #Plotting normed squared wave function.
  plot(x,conj(psi_cn(cn,n,x,t(it))).*psi_cn(cn,n,x,t(it)))
  axis([0 1 0 5])
  title(['Time = ' num2str(t(it))])
  
  #compute <x> 
  xnorm2= trapz(x,x.*conj(psi_cn(cn,n,x,t(it))).*psi_cn(cn,n,x,t(it)));
  a = line([xnorm2 xnorm2],[0 3]);
  
  #compute <x^2>
  x2norm2= trapz(x,x.^2.*conj(psi_cn(cn,n,x,t(it))).*psi_cn(cn,n,x,t(it)));
  
  #compute sigma_x
  sigmax = sqrt(x2norm2-(xnorm2)^2);
  b = line([xnorm2-sigmax xnorm2-sigmax],[0 1]);
  c = line([xnorm2+sigmax xnorm2+sigmax],[0 1]);
  pause(0.1)
  
  #Saving wave functions at every time step. Used to check if wave function is
  #normalised when time evolves. 
  %wf(:,it) = psi_cn(cn,n,x,t(it));#rows are the positions, coloums are each time step.
end

#Checking if wf output is normalized.
%for it = 1:length(wf(1,:))
%  Normwf(it) = trapz(x,(conj(wf(:,it)).*wf(:,it))');
%end