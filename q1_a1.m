clc;
clear;
close all

syms s t
T=0:0.001:15;

Tt=0.6;
Tg=0.15;
R=2.4;
Kp=598.8;
Tp=119.76;
dPD=0.02;

A=(dPD/s)*(-Kp/(1+s*Tp));
B=1+1/R*(Kp/(1+s*Tp))*(1/((1+s*Tt)*(1+s*Tg)));
dF=A/B;

df=ilaplace(dF)
df2=subs(vpa(df),t,T);

plot(T,df2)
