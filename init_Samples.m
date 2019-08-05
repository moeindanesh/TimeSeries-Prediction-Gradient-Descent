function [NDataPairs, SamplesNumber] = init_Samples()
NDataPairs=input('Enter number of Data Pairs = ');
SamplesNumber=input('Enter number of Samples = ');
while SamplesNumber <= NDataPairs
    disp('Samples Number must be greater than Data Pairs!\n');
    SamplesNumber=input('Enter number of Samples = ');
end