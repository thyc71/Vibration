function [ phi,force,displacement,velocity,acceleration ] = f_baseViberation( m,c,k,a,omega )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
% m: mass; c: damping; k: stiffness; a: amplitude of distance; omega: circle
% frequance of force
omega0 = sqrt(k/m);%���������Ƶ��
zeta = c./(2.*m*omega0);%�����
lambda = omega./omega0;%Ƶ�ʱ�

%���
B = a.*sqrt((1+(2.*zeta.*lambda).^2)./((1-lambda.^2).^2+(2.*zeta.*lambda).^2));
%x=Be^i(omega*t-phi)
phi = atan(2.*zeta.*lambda./(1-lambda.^2));

force = sqrt((B.*k).^2+(B.*omega*c).^2);%����������Ϊ����������������ʸ����
acceleration = B.*(omega.^2);%��������
velocity = B.*omega;
displacement = B;
%������֧�ܡ�����ѧP115��
%�������������������k�����ӣ���ʼΪ0��   ����������ʱΪ����������ΪP0��
%�����������������k�����ӣ���ʼΪP0/m������������ʱΪ��
end
