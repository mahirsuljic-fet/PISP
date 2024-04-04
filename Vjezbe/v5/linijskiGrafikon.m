t = 0:0.001:4*pi;
x = sin(t);
y = cos(t);
z = t;

plot3(x,y,z,'k','LineWidth',2);
zlabel('Vrijeme');
