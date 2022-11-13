#Desafio 1 - Gráfico de despersão; Tempo X Comprimento
#Gráfico de dispersão


x = 0:1:8;
y = [ 11 15 17.4 20.5 22.7 25.3 27.4 28 29.3];
plot(x, y, "or", "linewidth", 1)
title("Gráfico de dispersão: Tempo X Comprimento")
xlabel("Mêses")
ylabel("Comprimento")
grid on

##############################################################
#Desafio 2 - Gráfico de dispersão; Tempo X Peso

p = [ 26 59.5 105.4 200 239.5 364.3 421.7 476 488.2]
plot(x, p, "<r")
title("Gráfico de dispersão: Tempo X Peso")
xlabel("Mêses")
ylabel("Peso")
grid on

##############################################################
#Desafio 3 - gráfico de dispersão; Comprimento X Peso e Ajuste
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

