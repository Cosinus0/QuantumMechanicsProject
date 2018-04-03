####
#ex.2.2
####
#
#
function out = cn(n)
  
  for j = 1:n
    if mod(n,2)==0
      out(j) = 8.*sqrt(15)./(j.*pi)^ 3;
    else
      out(j) = 0;
      
    end
  end
end

  
    