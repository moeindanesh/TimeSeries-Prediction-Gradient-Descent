function [M, Alpha, q, FEPR] = init_Parameters()
M=input('Enter the number of Rules = ');
Alpha=input('Enter the Constant StepSize (Alpha) = ');
q=input('Enter number of iteration for each Data to train(q) = ');
FEPR=input('Enter desired Error for each point = ');