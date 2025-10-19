clf
hold on
view(3)
daspect([25 8 8])
axis([0 50 -8 0 0 8])

pause(1)
t = linspace(0,50,300);
x = t;
y = 2 .* cos(t) -5;
z = 2 .* sin(t) +5;
pause(1)
l1 = plot3([x(1),x(1)],[y(1),y(1)],[0,z(1)],'--b');
l2 = plot3([x(1),x(1)],[0,y(1)],[z(1),z(1)],'--r');


for i=1:299
    plot3([x(i),x(i+1)],[y(i),y(i+1)],[z(i),z(i+1)],'k');
    plot3([x(i),x(i+1)],[y(i),y(i+1)],zeros(1,2),'b');
    plot3([x(i),x(i+1)],zeros(1,2),[z(i),z(i+1)],'r');
    set(l1,'XData',[x(i+1),x(i+1)],'YData',[y(i+1),y(i+1)],'ZData',[0,z(i+1)]);
    set(l2,'XData',[x(i+1),x(i+1)],'YData',[0,y(i+1)],'ZData',[z(i+1),z(i+1)]);
    pause(0.01)
    
end