%G0??>k01??>m1??>k12??>m2
 
m1=1;m2=9;
k01=4;k12=2;

M=[m1,0;
    0,m2];
K=[k01+k12,-k12;
    -k12,k12];
%���ײ�������
[eig_vec,eig_val] = eig(M\K);
[omeg,w_order]    = sort(sqrt(diag(eig_val)));   %����Ƶ��
mode_vec = eig_vec(:,w_order); %����