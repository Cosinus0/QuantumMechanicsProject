####
#cplot(x,f)
####
#Graphs a complex function f(x)
#y-axis shows |f|^2 and the colour is given by the complex angle.
function cplot(x,f)
  hold on
  for c = 1:(length(x)-1)
      a = 0.5.*(angle(f(c))/pi+1);
      plot([x(c) x(c+1)],[abs(f(c))^2 abs(f(c+1))^2],'color', hsv2rgb([a 1 1]))
      pause(0.001)
  end
  hold off
end