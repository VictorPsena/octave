% or�amento familiar
clear all

%poupan�a inicial
p(1)=1010;

%constante de proporcionalidade
beta=0.67;
%juros da poupan�a
alpha= 0.01;
% sal�rio
r(1)= 1498.98;
c(1)=beta*r(1);
a= (1-beta) * alpha +1;
b= (1-beta)* r(1);
t = 0:1:20;

%valores de p,r,c

for i= 1:(length(t)-1)
  p(i+1)=((1+alpha)^(i))*p(i);
  r(i+1)=r(1)+alpha*p(i);
  c(i+1)=beta*r(i+1);
end

plot(t,p,'*',t,r,'o',t,c,'+','linewidth',2);

xlabel ('tempo(meses)');
legend ('poupa�a','renda','consumo');
