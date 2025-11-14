clf;
clc;

freq=[];
student=30;
n = 2000;
hold on

ylim([0,1])
plot(1:n,0.7063*ones(1,n),'r',LineWidth=1)
xlabel('实验次数')
ylabel('频率或概率')
for t=1:n
    same=0;
    for c=1:t
        y=0;
        birthdays = unidrnd(365,1,student);
        for i=1:29
            for j=i+1:30
                if birthdays(i)==birthdays(j)
                    y=1;
                    break
                end
            end
 
        end
        same = same+y;
    end
    if t==1
        d = plot(t,same/t,'b.','MarkerSize',6,'HandleVisibility','on');
        legend('理论概率','频率')
    else
        d = plot(t,same/t,'b.','MarkerSize',6,'HandleVisibility','off');
    end
    pause(0.001)
end