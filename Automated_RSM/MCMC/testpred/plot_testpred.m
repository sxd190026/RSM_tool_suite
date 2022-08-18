

X = table2array(GRACEOtestset(:,1));
Y1 = table2array(GRACEOtestset(:,8));
Y2 = testpred;
figure()
p1 = scatter(X,Y1,'filled');
hold on
p2 = scatter(X,Y2,'filled');
xlabel("Velocity",FontSize = 15)
ylabel("Percentage error",FontSize = 15)
legend([p1;p2],"Test data (O)","Predicted from model(O)",Fontsize = 15)
hold off

figure()
scatter(X,(Y2-Y1)*100/Y1,'filled')
hold on
xlabel("Velocity",FontSize = 15)
ylabel("Percentage error",FontSize = 15)
legend("test-pred O",Fontsize = 15)
hold off

