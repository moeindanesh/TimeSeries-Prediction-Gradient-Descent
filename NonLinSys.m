function [Samples, Pairs]=NonLinSys(SamplesNumber,NDataPairs)
    u=nan(1,SamplesNumber);
    y=nan(1,SamplesNumber);
    g=nan(1,SamplesNumber);
    u(1:2)=[sin(2*pi*1/200) sin(2*pi*2/200)];
    y(1:2)=u(1:2);
    g(1:2)=u(1:2);
    for k=2:SamplesNumber-1
        [y(k+1), g(k+1), u(k+1)]=NonLinearSYSTEM(k,y(k),y(k-1));
    end
    Samples=[u',y'];
    Pairs=[u(1:NDataPairs)',g(1:NDataPairs)'];
end