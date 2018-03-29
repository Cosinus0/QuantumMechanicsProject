#####
#out = psi_n(n,x)
#####
#Calculates the time independant stationary states wave functions for 
#infinite square well. The function takes a quantum number (n), and a 
#vector of x values(x).
#####
#(Using Hartree reduced units, mass of an electron, charge of an electron,
#ach bar and coulombs constant, all equal to one.)
function out = psi_n(n,x)
   out = sqrt(2).*sin(pi.*n.*x);
end