clf
hold on
t = linspace(0,2*pi,100);
x = 5 .* (1 + cos(t)) .* sin(t);
y = -5 .* (1 + cos(t)) .* cos(t);

l = plot([0,x(1)],[0,y(1)],'b');
note = text(5.5,0,['(',num2str(x(1)),',',num2str(y(1)),')']);
axis([-8 8 -10 2])

for i=1:99
    plot([x(i),x(i+1)],[y(i),y(i+1)])
    set(l,'XData',[0,x(i+1)],'YData',[0,y(i+1)]);
    set(note,'string',['(',num2str(x(i+1)),',',num2str(y(i+1)),')'])
    pause(0.01)
end