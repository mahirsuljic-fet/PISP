function plotSin(f1,f2)
  x=linspace(0,2*pi,f1*16+1);
  figure
  if nargin == 1
    plot(x,sin(f1*x),'rs--', 'LineWidth',2,'MarkerFaceColor','k');
  elseif nargin == 2
    y=linspace(0,2*pi,round(16*f2)+1);
    [X,Y]=meshgrid(x,y);
    Z=sin(f1*X)+sin(f2*Y);
    subplot(2,1,1);
    imagesc(x,y,Z);
    colorbar;
    axis xy;
    colormap hot
    subplot(2,1,2);
    surf(X,Y,Z);
  end
