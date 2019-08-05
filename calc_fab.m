function [f, a, b] = calc_fab(z, y_bar)
    b=sum(z);
    a=sum(y_bar.*z);
    f=a/b;