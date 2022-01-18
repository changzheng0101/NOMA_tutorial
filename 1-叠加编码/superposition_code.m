clc;clear;close all;

%要发送的数据
x1 = [0 1 1 0];
x2 = [1 0 1 0];

%调制之前
superPostionPlot(x1,x2,'user1调制前','user2调制前');

%BPSK
xmod1 = 2*x1-1;
xmod2 = 2*x2-1;

%画出调制后的结果
superPostionPlot(xmod1,xmod2,'user1调制后结果','user2调制后结果');

%进行缩放
a1 = 0.75;
a2 = 0.25;
scale_x1 = xmod1 * sqrt(a1);
scale_x2 = xmod2 * sqrt(a2);
superPostionPlot(scale_x1,scale_x2,'user1缩放后结果','user2缩放后结果');

%相加，得到NOMA发送信息
send_data = scale_x1 + scale_x2;
figure();
stairs([0 1 2 3 4],[send_data send_data(end)],'r','linewidth',2);
ylim([-2 2]);
title('叠加编码之后的结果');
grid on;hold on;
%用于记录分割线
ay = -2:0.4:2;
ax = ones(1,length(ay));
for u = 1:3
    plot(ax*u,ay,':k','linewidth',2);
end


function superPostionPlot(data1,data2,title1,title2)
    %画图时候的x坐标
    x=[0 1 2 3 4];

    %用于记录分割线
    ay = -2:0.4:2;
    ax = ones(1,length(ay));
    
    %画图相关
    figure();
    subplot(2,1,1);
    stairs(x,[data1 data1(end)],'linewidth',2);
    ylim([-2 2]);
    title(title1);
    grid on;hold on;
    for u = 1:3
        plot(ax*u,ay,':k','linewidth',2);
    end
    subplot(2,1,2);
    stairs(x,[data2 data2(end)],'g','linewidth',2);
    ylim([-2 2]);
    title(title2);
    grid on;hold on;
    for u = 1:3
        plot(ax*u,ay,':k','linewidth',2);
    end
end


