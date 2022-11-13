%ajuste Linear populacional
x = 1:1:6;
y = [1.0126 1.0124 1.0122 1.0119 1.0116 1.0112];

%%%%%%%%%%%%%%%%%%Gráfico%%%%%%%%%%%%%%%%%%%%%%
plot (x, y, '*r');
title("Ajuste Linear");
grid on
xlabel("eixoX");
ylabel("eixoY");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = length(x);
s1 = sum(x.*y);
s2 = sum(x);
s3 = sum(y);
s4 = sum(x.^2);

a = (n*s1 - s2*s3)/(n*s4 - (s2)^2);
b = (s3*s4 - s2*s1)/(n*s4-(s2)^2);

x_1 = 1:0.6:6;
figure
y_1 = a*x_1 +b;
plot(x, y, "o", x_1,y_1,"--", "linewidth", 2)
xlabel("Número de anos");
ylabel("Taxa de crecimento da população");
legend("dados", "ajuste linear y = ax + y");
