%G0->k01->m1->k12->m2->k23->m3->k30->G0
%'->'means spring, G0 means Ground
 
m1=1;m2=9;m3=1;
k01=4;k12=2;k23=2;k30=4;

M=[m1,0,0;
    0,m2,0;
    0,0,m3];
K=[k01+k12,-k12,0;
    -k12,k12+k23,-k23;
    0,-k23,k23+k30];
%二阶参数矩阵
[eig_vec,eig_val] = eig(M\K);
[omeg,w_order]    = sort(sqrt(diag(eig_val)));   %返回频率
mode_vec = eig_vec(:,w_order); %振型