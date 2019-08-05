function Main(M, Alpha, PointR, FEPR, CycleCheck, CycleR, NDataPairs, SamplesNumber, InputsNumber)
clc;
%% Parameters

% init_FParameters
%[M, Alpha, PointR, FEPR] = init_Parameters();

% init_CycleCheck
%[CycleCheck, CycleR] = init_CycleCheck();

% init_Samples
%[NDataPairs, SamplesNumber] = init_Samples();

% init_TimeSeries
[LowerBound, UpperBound] = init_TimeSeries();

% -------------------- Fuzzy System Parameters --------------------
PlottingRES=min((UpperBound-LowerBound)/500); % Membership Function Resolution
% Parameters Validation
[LowerBound, UpperBound] = validation_Parameters(LowerBound, UpperBound, InputsNumber);

COLOR=rand(M,3);
%% Rules
y_Approx=nan(1,SamplesNumber);
[Samples, Pairs]=timeSeries_MG(SamplesNumber,NDataPairs,InputsNumber);
x_bar=Pairs(1:M,1:InputsNumber);
y_bar=Pairs(1:M,end);
Sigma=repmat((max(x_bar)-min(x_bar)),M,1);

% Plot Membership Functions Before Update
figure;
plot_MembershipFunctions(M, InputsNumber, LowerBound, PlottingRES, UpperBound, Sigma, x_bar, y_bar, COLOR, 'Before Update', 1);
%% Update Fuzzy System Parameters
for cycle=1:CycleR
    for p=1:size(Pairs,1)
        % -------------------- z ------------------------
            [z, z_Buffer] = calc_z(M, InputsNumber, Pairs, x_bar, Sigma, p);
        % -------------------- f a b ------------------------       
            [f, a, b] = calc_fab(z, y_bar);
        % ------------------- Update -------------------
            for q=1:PointR
                for l=1:M
                    y_bar(l)=y_bar(l)-Alpha*(f-Pairs(p,end))/b*z(l);
                    for i=1:InputsNumber                    
                        x_bar(l,i)=x_bar(l,i)-Alpha*(f-Pairs(p,end))/b*(y_bar(l)-f)*z(l)*(2*(Pairs(p,i)-x_bar(l,i))/(Sigma(l,i)^2));
                        Sigma(l,i)=Sigma(l,i)-Alpha*(f-Pairs(p,end))/b*(y_bar(l)-f)*z(l)*(2*((Pairs(p,i)-x_bar(l,i))^2)/(Sigma(l,i)^3));
                    end
                end
                if (f-Pairs(p,end))<FEPR
                    break;
                end
            end
    end
    if ~CycleCheck
        break;
    end
end
%% Results
% Plot Membership Functions After Update
plot_MembershipFunctions(M, InputsNumber, LowerBound, PlottingRES, UpperBound, Sigma, x_bar, y_bar, COLOR, 'After Update', 0);
%------------------------Calculate f(k)---------------------------------
f=nan(1,SamplesNumber);
f(1:2)=Samples(1:2,end);
for k=3:SamplesNumber
    %--------------------z Calculation------------------------
            [z, z_Buffer] = calc_z(M, InputsNumber, Samples, x_bar, Sigma, k);
    %--------------------f & a & b Calculation------------------------        
            b=sum(z);
            a=sum(y_bar.*z);
            f(k)=a/b;

            y_Approx(k)=f(k);
  
end
%------------------------Plotting Final Results-------------------------
figure;
plot(Samples(:,end));
hold on
plot(y_Approx,'r');
legend('Real Value','Identified Value');
%-----------------------Error-------------------------------------------
Error=Samples(:,end)-y_Approx';
clc;
disp('Mean Square Error:');
MSE=mse(Error);
disp(MSE);
disp('Mean Absolute Error:');
MAE=mae(Error);
disp(MAE);