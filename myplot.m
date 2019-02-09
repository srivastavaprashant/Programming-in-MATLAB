% WRITE YOU CODE HERE!!! 
function myplot(v1,v2)
  % load the plot properties	
  plt = load('plot_properties.mat');
  p1=plt.plot_properties(1);
  p1type = str2func(p1.plottype);
  p1prop = p1.plotproperties;
  p2=plt.plot_properties(2);
  p2type = str2func(p2.plottype);
  p2prop = p2.plotproperties;
  p3=plt.plot_properties(3);
  p3type = str2func(p3.plottype);
  p3prop = p3.plotproperties;
  
  % create subplots using the properties
  subplot(3,1,1);
  p1type(v1,v2,[p1prop.LineStyle p1prop.Color],'LineWidth',p1prop.LineWidth);
  subplot(3,1,2);
  p2type(v1,v2,p2prop.BarWidth,'FaceColor',p2prop.FaceColor,'EdgeColor',p2prop.EdgeColor);
  subplot(3,1,3);
  p3type(v1,v2,p3prop.BarWidth,'FaceColor',p3prop.FaceColor,'EdgeColor',p3prop.EdgeColor);
    
end
