function [ phi,force,displacement,velocity,acceleration,beta ] = f_massViberation( m,c,k,P0,omega )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
% m: mass; c: damping; k: stiffness; P0: amplitude of force; omega: circle
% frequance of force
omega0 = sqrt(k/m);%固有频率
zeta = c./(2.*m*omega0);%阻尼比
lambda = omega./omega0;%频率比
B = P0./(k.*sqrt((1-lambda.^2).^2+(2.*zeta.*lambda).^2));%x=Be^i(omega*t-phi)
phi = atan(2.*zeta.*lambda./(1-lambda.^2));

force = sqrt((B.*k).^2+(B.*omega*c).^2);%被动端受力为弹簧力和阻尼力的矢量和

acceleration = B.*(omega.^2);%主动端振动
velocity = B.*omega;
displacement = B;
B0 = P0./k;
beta = B./B0;
%适用于动力总成
%被动端受力情况，随着k的增加，初始为0，   增加至共振时为最大，随后缓慢降为P0；
%主动端振动情况，随着k的增加，初始为P0/m，增加至共振时为最大，随后缓慢降为0
end
