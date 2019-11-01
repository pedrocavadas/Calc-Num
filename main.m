clc;
clear;
close all;

maxiter = input("Digite o numero maximo de iteracoes: ");
x0 = input("Digite o chute inicial: ");
F = @(x)[x(0)^2 + x(1)^2 - 2; x(0)^2 - x(1)^2 - 1];
DF = @(x)[2*x(0) + 2*x(1); 2*x(0) - 2*x(1)];
tol = 10e-4;
NewtonRaphson(F,DF,x0,tol,maxiter);