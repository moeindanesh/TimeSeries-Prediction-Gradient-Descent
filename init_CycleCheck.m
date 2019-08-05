function [CycleCheck, CycleR] = init_CycleCheck()
CycleCheck=input('Do you want to repeat the training for all data again?(0 or 1) = ');
switch CycleCheck
    case 0
        CycleCheck=false;
        CycleR=1;
    case 1
        CycleCheck=true;
        CycleR=input('Enter number of iteration for all data = ');
    otherwise
        disp('Invalid input; It is set as its default type.');
        CycleCheck=true;
        CycleR=2;
end