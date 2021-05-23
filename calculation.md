# 演算过程

## RES守恒的条件：Csink和MAT的关系

### 演算

$$
\begin{aligned}
(C+\delta C)\times K \times2^{\frac{MAT+\delta MAT}{10}} &=C\times K \times 2^{\frac{MAT}{10}}\\
C\times K \times 2^{\frac{MAT}{10}}\times2^{\frac{\delta MAT}{10}}+\delta C \times K \times 2^{\frac{MAT}{10}} \times 2^{\frac{\delta MAT}{10}} &= C\times K \times 2^{\frac{MAT}{10}}\\
\delta C \times 2^{\frac{\delta MAT}{10}} &= C(1-2^{\frac{\delta MAT}{10}})\\
\delta C &= C[(\frac{1}{2})^{\frac{\delta MAT}{10}}-1]
\end{aligned}
$$

我们得到
$$
\delta C = C[(\frac{1}{2})^{\frac{\delta MAT}{10}}-1]  \tag{1}
$$

我们又有
$$
\delta C = - C \times K \times2^{\frac{MAT}{10}} \times 2^{\frac{\delta MAT}{10}} \tag{2}
$$

~~那么$(1)(2)$两者间可能成立吗？(我刚刚把GPP给漏掉了，所以下面的分析是错误的)~~
$$
\begin{aligned}
1-(\frac{1}{2})^{\frac{\delta MAT}{10}} &=K\times 2^{\frac{MAT}{10}}\times 2^{\frac{\delta MAT}{10}}\\
\log(1-(\frac{1}{2})^{\frac{\delta MAT}{10}}) & = \log(K) +\frac{MAT}{10}\log2+\frac{\delta MAT}{10}\log2\\

\end{aligned}
$$
~~对题设条件进行分析$K=\frac{1}{40}$, $MAT = 0/5/10$ ,发现只有MAT=0的时候可能有平衡条件。但也是~~

<img src="figure2.1.2.png" style="zoom:50%;" />

~~

### 函数曲线

<img src="figure2.1.1.png" style="zoom:50%;" />

这是C=1的时候的函数曲线，纵轴是$\delta C$ 占Csink 的百分比。

### 温度和变化趋势

$$
\begin{aligned}
GPP	&>	RES\\
\frac{1018*1.1814}{(1+e^{0.2(20-10-MAT-\Delta MAT)})(1+e^{0.3(-30+MAT+\Delta MAT)})}\\-Csink\times K\times 2^{\frac{MAT+\Delta MAT}{10}} &>0
\end{aligned}
$$

$$
\frac{1018*1.1814}{(1+e^{0.2(20-10-MAT)})(1+e^{0.3(-30+MAT)})}=Csink \times K \times 2^{\frac{MAT}{10}}
$$

代入化简得到
$$
\frac{(1+e^{0.2(20-10-MAT)})(1+e^{0.3(-30+MAT)})}{(1+e^{0.2(20-10-MAT-\Delta MAT)})(1+e^{0.3(-30+MAT+\Delta MAT)})}-2^{\frac{\Delta MAT}{10}}>0
$$

$$

$$


$$
\begin{aligned}
GPP&=Ra+Rh\\
1018\times \frac{1.1814}{(1+e^{0.2(20-10-MAT)})(1+e^{0.3(-20-10+MAT)})}&= C(t=0) \times \frac{1}{40} \times e^{\frac{log2}{10}\times MAT}
\end{aligned}
$$

$$
C(t=0)=F(MAT)
$$

$$
F(MAT,\Delta MAT)=GPP(MAT+\Delta MAT)-RES(C,MAT+\Delta MAT)
$$

$$

$$

$$
F(MAT,\Delta MAT)=
$$


$$
GPP(MAT) = \frac{GPP_{opt}\times1.1814}{(1+e^{0.2(T_{opt}-10-MAT})(1+e^{0.3(-T_{opt}-10+MAT})}
$$

$$
RES(C,MAT) =Ra(t)+Rh(t) = C(t-1) \times K \times 2^{\frac{MAT(t)}{10}}
$$

$$
F(MAT_0,\Delta MAT) = GPP(MAT_0+\Delta MAT)-RES(MAT_0,\Delta MAT+\Delta MAT)
$$

$$
C(t)=C(t-1)+NEP(t)
$$

