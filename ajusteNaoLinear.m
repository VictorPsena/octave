####################Ajuste Não Linear###########################################
clear
clc
x = 0:1:11;
y = [ 1000 1009.7 1021.8 1032.2 1045.3 1056.9 1065.8 1077.1 1089.7 1110.1 1121 1132.1];
plot(x, y, "*r", "linewidth", 2 )
title("Gráfico de dispersão")
xlabel("Mêses")
ylabel("Capital")
grid on;

%z = alfa1 + alga2*x
####################útilizando Polyfit#########################################

%y = b*e^axe
%ln(y) = ln(b) + ax

z = log(y);
n = 1;
p = polyfit(x, z, n);
%Polyfut devolve os coeficientes do maior grau para o menor
b = exp(p(2));
w = b*exp(p(1)*x);
plot(x, y, "*", "linewidth", 2,  x, w, "linewidth", 2 )
title("Ajuste não linear Útilizando Polyfit")
xlabel("Mêses")
ylabel("Capital")
grid on;
legend("Dados", "ajuste")

####################útilizando Matrizes#########################################
a11 = length(x);
a12 = sum(x);
a21 = a12;
a22 = sum(x.^2);

A = [ a11 a12; a21 a22];

b1 = sum(z);
b2 = sum(x.*z);

b = [b1; b2]

m = A\b;
#na matriz começa com o menor grau ou seja, a constante.

alfa1 = exp(m(1));
alfa2 = m(2);

y1 = alfa1*exp(alfa2*x);

figure
plot(x, y, "*r", x, y1)
title("Ajuste não linear Útilizando matrizes")
xlabel("Mêses")
ylabel("Capital")
grid on;
legend("Dados", "ajuste")
















