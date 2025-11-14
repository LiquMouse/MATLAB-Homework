clc;clf;clearvars;

n=1000; %实验次数
hold on
plot(1:n,1/6*ones(1,n),'r','LineWidth',1) %理论概率
ylim([0,1])
xlabel('实验次数')
ylabel('概率或频率')
for t=1:n
    y=0; %5点次数
    points = unidrnd(6,1,t);
    for i=points
        if i==5
            y = y+1;
        end
    end
    if t==1
        plot(t,y/t,'b.','MarkerSize',6,'HandleVisibility','on')
        legend('理论概率','频率')
    else
        plot(t,y/t,'b.','MarkerSize',6,'HandleVisibility','off')
    end
    pause(0.001)
end