function [LowerBound, UpperBound] = validation_Parameters(LowerBound, UpperBound, InputsNumber)
if numel(LowerBound)~=InputsNumber+1
    if numel(LowerBound)==1
        LowerBound=repmat(LowerBound,1,InputsNumber+1);
    else
        disp('Invalid Lower Boundary!');
        LowerBound=nan;
    end
end
if numel(UpperBound)~=InputsNumber+1
    if numel(UpperBound)==1
        UpperBound=repmat(UpperBound,1,InputsNumber+1);
    else
        disp('Invalid Upper Boundary!');
        UpperBound=nan;
    end
end