clear;
clc;
x = [ 0.1 0.2 0.5 0.7 0.8 0.9 1.1 1.23 1.35 1.5 1.7 1.8];
y = [ 0.19 0.36 0.75 0.91 0.96 0.99 0.99 0.94 0.87 0.75 0.51 0.35];

%%%%%%%%%%%%%%%Gráfico de dispersão%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(x,y, "ob", "linewidth", 2);
xlabel("EixoX");
ylabel("EixoY");
title("Gráfico de Dispersão");
grid on;
figure
############################################################################

% g1(x) =1, g2(x) = x, g3(x) x*x;

a11 = length(x);
a12 = sum(x);
a13 = sum(x.^2);
a21 = a12;
a22 = a13;
a23 = sum(x.^3);
a31 = a13;
a32 = a23;
a33 = sum(x.^4);

A = [a11 a12 a13; a21 a22 a23; a31 a32 a33];

b1 = sum(y);
b2 = sum(x.*y);
b3 = sum((x.^2).*y);

b = [b1;b2;b3];
#resoluçãoDoSistema
alfa = A\b

###########################Gráfico da Parabola###############################
%y1 = alfa1*g1(x) + alfa2*g2(x) + alfa3*g2(x)
%y1 = alfa1 + alfa2*x1 + alfa3*x^2

x1 = 0.1:0.1:1.8;
y1 = alfa(1) + alfa(2)*x1 + alfa(3)*x1.^2;

plot(x, y,"o", x1, y1);
xlabel("EixoX");
ylabel("EixoY");
title("Ajuste de parabola");
legend("dados", "ajuste parabola");
grid on;

%ajuste utilizando o polyfit
figure
n = 2;
p = polyfit(x,y, n);
xi = linspace(0.1, 1.8, 50);
z = polyval(p, xi);
plot(x, y, "<r", xi, z, 'k')
xlabel("EixoX");
ylabel("EixoY");
title("Ajuste de parabola, útilizando o polyfit");
legend("dados", "ajuste parabola");
grid on;


