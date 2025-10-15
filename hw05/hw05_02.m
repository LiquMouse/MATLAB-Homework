clf

t = linspace(0,2*pi,100)

x = sin(t).*(exp(cos(t))-2.*cos(4.*t)-sin(t./12).^5);
y = cos(t).*(exp(cos(t))-2.*cos(4.*t)-sin(t./12).^5);

for i=1:99
    plot([x(i),x(i+1)],[y(i),y(i+1)])
    hold on
    xlim([-3 3])
    ylim([-2 4])
    pause(0.01)

end