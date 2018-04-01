####
#out = psi_cn(cn,n,x,t)
####
#
#
function out = psi_cn(cn,n,x,t)
  out = 0;

  for j = 1:n
    out = out + (cn(j).*Lpsi_n(n,x,t));
  end
  
end  