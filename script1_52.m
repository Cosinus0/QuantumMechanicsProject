#

clear all
close all

x = linspace(0,1,100);
t = linspace(0,10,1000);

n = 2;
cn = [2+i 1-i]; #cn from Ulfs tutorial.
%cn = [sqrt(0.5) sqrt(0.5)];#cn where c1=c2.
cn = cn/norm(cn);

for it = 1:length(t)
  wf(:,it) = psi_cn(cn,n,x,t(it));#rows are the positions, coloums are each time step.
  %plot(x,conj(psi_cn(cn,n,x,t(it))).*psi_cn(cn,n,x,t(it)))
  %axis([0 1 0 5])
  %title(['Time = ' num2str(t(it))])
  %pause(0.1)
end

#Checking if wf output is normalized.
%for it = 1:length(wf(1,:))
%  Normwf(it) = trapz(x,(conj(wf(:,it)).*wf(:,it))');
%end  