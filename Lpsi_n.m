####
#out = Lpsi_n(n,x,t)
####
#
#

function out = Lpsi_n(n,x,t)
  out = psi_n(n,x).*exp(-i.*((n.^2.*pi.^2)./(2)).*t);
end