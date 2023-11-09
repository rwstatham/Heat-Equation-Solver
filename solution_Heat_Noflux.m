%%plotting the function in page 52
clear all
close all
L=2.0;
x=[0:0.01:L];
T=0.5;
t=[0:0.005:T];
lx=length(x);
lt=length(t);
k=1.0;


Mov = moviein(lt);

n=1000;
u=sparse(lt,lx);

u=sparse(lt,lx);


for j=1:lt
    u(j,1:lx)=(3.0 + 2.0/(3.0*pi));
for i=1:2
    u(j,1:lx)=u(j,1:lx) +  ( (( (-1.0)^(i) + 1.0 )/((3.0 -i)*pi)) + (( (-1.0)^(i) + 1.0 )/((3.0 +i)*pi)) ) * cos( (i*pi*x)/L).*exp(-k*t(j)*((i*pi)/L)^2);
end
for i=4:n
    u(j,1:lx)=u(j,1:lx) +  ( (( (-1.0)^(i) + 1.0 )/((3.0 -i)*pi)) + (( (-1.0)^(i) + 1.0 )/((3.0 +i)*pi)) ) * cos( (i*pi*x)/L).*exp(-k*t(j)*((i*pi)/L)^2);
end
    plot(x,u(j,:),'Linewidth',3)
    title(['Solution of Heat Equation at time  ',num2str(t(j))])
    axis([0 L 2 4])
    legend({'Temperature'},'FontSize',24)
    grid on
    Mov(:,j) = getframe;
end

[X,T]=meshgrid(x,t);
figure
surf(X,T,u)
xlabel('x-dimension')
ylabel('Time')
zlabel('Temperature u(x,t)')
title('Evolution of the temperature for the heat equation')

figure
mesh(X,T,u)
xlabel('x-dimension')
ylabel('Time')
zlabel('Temperature u(x,t)')
title('Evolution of the temperature for the heat equation')
