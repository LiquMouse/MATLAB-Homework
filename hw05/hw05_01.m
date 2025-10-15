clf

[x,y] = meshgrid(-10:.05:10);
a = 0;

z1 = x.^2 + 2.*y.^2;
mesh(x,y,z1,'EdgeAlpha',0.2,'FaceAlpha',0.2)
hold on
z2 = x-y+a;
h_surf=mesh(x,y,z2,'EdgeAlpha',0.2,'FaceAlpha',0.2,'FaceColor','g','EdgeColor','g');

r0 = abs(z1-z2)<=0.1;
xx = x.*r0;
yy = y.*r0;
zz = z1.*r0;
h_curve=plot3(xx(r0==1),yy(r0==1),zz(r0==1),'.r');

for a=0:0.01:100
    z2 = x-y+a;
    set(h_surf,'zdata',z2)

    r0 = abs(z1-z2)<=0.1;
    xx = x.*r0;
    yy = y.*r0;
    zz = z1.*r0;
    set(h_curve,'XData',xx(r0==1),'YData',yy(r0==1),'ZData',zz(r0==1))

    pause(0.001)
    
end
