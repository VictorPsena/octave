#alguns conceitos para lembrar
%oi
v = [ 1 2 3 ];
v.^ 2;
s = [1 2 3; 1 2 3];

#operações com vetores
x = 0 : 0.1:1;
y = 1 : 0.1:2;
size(x);
length(x);
z = x.*y;

#operação com matrizes
A = [ 5 3; 1 1];
B = [ 4 1; 4 2];
A*B;
inv(A); #calcula a inversa da matriz
inv(B);
ones(size(A)); #matriz de uns do tamanho da A
zeros(size(A));
#resolver sistema Bx = C
C = [4 ; 1];
X = inv(B)*C; #ou
X = B\C;
#Polinômios
#x^2 - 1 = 0
p = [ 1 0 -1];
%encontrar as raízes
r = roots(p);
%devolver os coeficentes do poly
pp = poly(r);
%multiplicação dos polinômios
a_x = [1 2 3 4];
b_x = [1 4 9 16];
c = conv(a_x, b_x);
#plotando o gráfico
#x = -1: 0.1: 1;
#y = x.^2;
#plot(x, y)
xlabel('eixo X')
ylabel('eixo Y')
##############
x = -pi : 0.1: pi;
y = sin(x);
#'figure' antes do plot para plotar 2 figuras
plot(x, y)

#duas figuras juntas

#x = -pi: 0.01: pi;
#y = sin(x);

#g = cos(x);

#plot(x, y, 'r', x, g, 'b--');
#xlabel('eixo X');
#ylabel('eixo Y');
#legend('sin(x)', 'cos(x)');
#title('Gráfico');

###################################################################
#gráfico em R^3
#t = 0: 0.1: (10*pi);
#figure
#plot3(cos(t), sin(t), t)
#grid on

%superfice

x = -2: 0.1: 2;
y = -2: 0.1: 2;
[X, Y] = meshgrid(x, y);
A = X.^2 - Y.^2;
surf(x, y, A);
title('Paraboloide Hiperbolico')
#hold on (trabalhando com figuras geometricas de diferentes naturezas)










































