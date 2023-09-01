clc;
clear;
close all

syms s t

Tt=0.6;
Tg=0.15;
R=2.4;
Kp=598.8;
Tp=119.76;
dPD=0.02;

% a)
Kia=0.1;
T=0:0.01:20;

C=Kp/(1+s*Tp)*(1/R+Kia/s)
D=(1+s*Tt)*(1+s*Tg)
A=-(Kp*dPD)/(1+s*Tp);
B=1+C/D;
dF=A/B;

df=ilaplace(dF)
df2=subs(vpa(df),t,T);

figure(1)
plot(T,df2)

% b)
Kib=0.4;
T=0:0.01:500;

C=Kp/(1+s*Tp)*(1/R+Kib/s)
D=(1+s*Tt)*(1+s*Tg)
A=-(Kp*dPD)/(1+s*Tp);
B=1+C/D;
dF=A/B;

df=ilaplace(dF)
df3=subs(vpa(df),t,T);

figure(2)
plot(T,df3)

% c)
Kic=1;
T=1100:0.01:1200;

C=Kp/(1+s*Tp)*(1/R+Kic/s)
D=(1+s*Tt)*(1+s*Tg)
A=-(Kp*dPD)/(1+s*Tp);
B=1+C/D;
dF=A/B;

df=ilaplace(dF)
df4=subs(vpa(df),t,T);

figure(3)
plot(T,df4)