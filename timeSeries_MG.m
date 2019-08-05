%TimeDelay = 31
function [Samples, Pairs]=timeSeries_MG(SamplesNumber,NDataPairs,InputsNumber)
Samples=nan(SamplesNumber,InputsNumber+1);
    Samples1=0.2:0.01:0.51;
    for i=33:SamplesNumber+33+InputsNumber
        Samples1(i)=0.2*Samples1(i-31)/(1+(Samples1(i-31)^10))+0.9*Samples1(i-1);
    end
    Samples1=Samples1(33:end);
    
    for i=1:SamplesNumber
        Samples(i,:)=Samples1(i:i+InputsNumber);
    end
    Pairs=Samples(1:NDataPairs,:);
end