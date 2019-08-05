function [z, z_Buffer] = calc_z(M, InputsNumber, Pairs, x_bar, Sigma, p)
    z=nan(M,1);
    z_Buffer=nan(1,InputsNumber);
    for l=1:M
        for i=1:InputsNumber
            z_Buffer(i)=exp(-(((Pairs(p,i)-x_bar(l,i))/Sigma(l,i))^2));
        end
        z(l)=prod(z_Buffer);
    end