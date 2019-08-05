function [y, g, u]=NonLinearSYSTEM(k,y_k,y_k_1)
    u=sin(2*pi*k/200);
    g=0.6*sin(pi*u)+0.3*sin(3*pi*u)+0.1*sin(5*pi*u);
    y=0.3*y_k+0.6*y_k_1+g;
end