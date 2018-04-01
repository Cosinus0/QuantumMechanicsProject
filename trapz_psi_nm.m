####
#out = trapz_psi_nm(n,m,x)
####
#Checks orthogonality between two psi_n wave function 
#with quantum number n and m.
###
#Function needs two quantum numbers and a vector of x values as its input,
#output is a number describing orthonality.


function out = trapz_psi_nm(n,m,x)
  outf = trapz(x,conj(psi_n(n,x)).*psi_n(m,x));
  
  if outf<1
    out = 0;
  else
    out = outf;
  end
  
end