load('C:\Users\RiazS\Documents\MATLAB\Usyd\Firming Capacity\Case_3_Updated\Data\Result5_updated.mat') %1_updated
close(figure(5))
figure(5);
stairs(sum(Data.MarketSolution.Gen.Power(15:end,:))...
   ,'DisplayName','P^{Gas+RES}')
hold on
stairs(750*ones(1,Data.Model.Parameter.T_Hrz),'r','DisplayName','FC^{Ref}')
stairs(sum(Data.MarketSolution.Gen.Power(16:end,:))...
    +Data.MarketSolution.Gen.Status(15,:)*Data.Model.Gen.Max_Real_Power(15)+...
    sum(Data.MarketSolution.Bus.UFC,1),'DisplayName','FC^{Actual}');
stairs(sum(Data.MarketSolution.Gen.Power(16:end,:)),'DisplayName','P^{RES}')
stairs(Data.MarketSolution.Gen.Status(15,:)*Data.Model.Gen.Max_Real_Power(15),'DisplayName','FC^{Gas}')
% stairs(sum(Data.MarketSolution.Bus.FC,1),'DisplayName','FC^{PR}')
stairs(sum(Data.MarketSolution.Bus.UFC,1),'DisplayName','FC^{UBat}')
% plot(Data.MarketSolution.Uty_Storage.Power,'DisplayName','P^{Strg}')
ylabel('Power (MW)')
xlabel('Time (hours)')
% xlim([500,600])