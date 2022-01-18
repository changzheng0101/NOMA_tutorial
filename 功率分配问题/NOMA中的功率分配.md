# 名词解释





channel state information CSI 信道状态消息



在之前的讨论中，功率分配都是固定的，用户1的功率为0.75，用户二的功率为0.25，这种固定的分配没有考虑信道。对于不同的信道，可以不同的动态分配方案。

目前存在几种动态分配功率的方案，例如以最大化总速率为目标的优化方案。在这篇文章中，我们以**最小化中断概率**为目标。

>Outage probability 中断概率：传输的信息速率小于需要的信息速率的概率。
>
>维基百科：In [Information theory](https://en.wikipedia.org/wiki/Information_theory), **outage probability** of a [communication channel](https://en.wikipedia.org/wiki/Communication_channel) is the [probability](https://en.wikipedia.org/wiki/Probability) that a given information rate is not supported, because of variable [channel capacity](https://en.wikipedia.org/wiki/Channel_capacity). Outage probability is defined as the probability that information rate is less than the required threshold information rate. It is the probability that an outage will occur within a specified time period.

# NOMA容量

从————的推导中我们可以知道，NOMA的容量表达式为：
$$
R_f=log_2(1+\frac{|h_f|^2P\alpha_f}{2})
$$

$$
R_n=log_2(1+\frac{|h_n|^2P\alpha_n}{\sigma^2})
$$

$R_n$表示的是近端用户经过successive interference cancellation（SIC，串行干扰消除）之后的信道容量。

* $R_f$ 远端用户的信道容量
* $R_n$ 近端用户对的信道容量
* $h_f$ 远端用户瑞利衰减系数
* $h_n$ 近端用户瑞利衰减系数
* $P$ 总的发送功率
* $\alpha_f$ 远端用户的功率分配系数
* $\alpha_n$ 近端用户的功率分配系数
* $\alpha_f+\alpha_n=1$
*  $\alpha_f>\alpha_n$



假设远端的用户需要达到速率$R^*$,也就是$R^* \geq R_n$,不妨让$R^* = R_n$

可以得到
$$
R^*=log_2(1+\frac{|h_f|^2P\alpha_f}{2})
$$


 