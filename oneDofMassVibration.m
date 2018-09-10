m = 1;
c = 10;
P0 = 1;

x=1:1:1000;
y=1:1:50;
[k,omega]= meshgrid(x,y);

[ phi,force,displacement,velocity,acceleration,beta ] = f_massViberation( m,c,k,P0,omega );
figure(1);
surf(k,omega,acceleration);
shading interp;
figure(2);
surf(k,omega,velocity);
shading interp;
figure(3);
surf(k,omega,displacement);
shading interp;
figure(4);
surf(k,omega,force);
shading interp;
figure(5);
surf(k,omega,beta);
shading interp;
%subplot(1,2,1)
%surf(k,omega,acceleration);
%shading interp;
%subplot(1,2,2)
%surf(k,omega,velocity);
%shading interp;