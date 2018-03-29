#####
#out = psi_n_plot(n,x)
#####
#Creates a seqence of plots for the time-independant infinite square well
#wave function up to the input quantum number. Each plot representing 
#a different quantum number. The function takes a maxium quantum 
#number (n), and a vector of x values (x).
#####
#Uses Hartree reduced units.
function out = psi_n_plot(n,x)
  for j = 1:n
    plot(x ,psi_n(j,x))
    title(['Time-independant wave-function with n = ' int2str(j)])
    pause(1)
  end
end     