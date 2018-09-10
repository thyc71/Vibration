m = 1;
c=10;
a = 10;

x=1:1:1000;
y=1:1:150;
[k,omega]= meshgrid(x,y);

[ phi,force,displacement,velocity,acceleration ] = f_baseViberation( m,c,k,a,omega );
%figure(1);
%surf(k,omega,acceleration);
%shading interp;
%figure(2);
%surf(k,omega,velocity);
%shading interp;
%subplot(1,2,1)
%surf(k,omega,acceleration);
%shading interp;
%subplot(1,2,2)
%surf(k,omega,velocity);
%shading interp;
surf(k,omega,force);
shading interp;