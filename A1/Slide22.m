%1 -Gere uma sequência de números impares entre 1 e 10
%2 – Gere uma sequência de 11 números inteiros entre -5 e 5.
% (resolva de 2 formas)
%3 – Gere a seguinte matriz
%4 – Acrescente uma nova linha e coluna à matriz A
%5 – Apague as colunas impares. 

%1
impares = 1:2:10

%2-a
a11 = -5:5
%2-b
b11 = linspace(-5,5,11)

%3
Matrix = [1,5,1-j;4,j,-1]

%4
Matrix= [Matrix;[1,2,3]]
Matrix= [Matrix, [1;2;3]]

%5
Matrix= Matrix(:,2:2:end)