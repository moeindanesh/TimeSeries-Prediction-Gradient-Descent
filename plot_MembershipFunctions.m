function [] = plot_MembershipFunctions(M, InputsNumber, LowerBound, PlottingRES, UpperBound, Sigma, x_bar, y_bar, COLOR, plot_stat, plot_position)
for i=1:InputsNumber
    X=LowerBound(i):PlottingRES:UpperBound(i);
    Y=nan(M,numel(X));
    for j=1:M
        Y(j,:)=gaussmf(X,[Sigma(j,i),x_bar(j,i)]);
    end
    subplot(InputsNumber+1,2,2*i-plot_position);
    for k=1:M
        plot(X,Y(k,:),'color',COLOR(k,:));
        hold on;
    end
    Name=['Input-' num2str(i)];
    ylabel(Name);
    xlim([LowerBound(i),UpperBound(i)]);
end
subplot(InputsNumber+1,2,2*(InputsNumber+1)-plot_position);
for i=1:numel(y_bar)
    line([y_bar(i),y_bar(i)],[0,1],'linewidth',2,'color',COLOR(i,:));
    hold on;
end
hold off;
ylabel('Output');
xlabel(plot_stat);
xlim([LowerBound(end),UpperBound(end)]);