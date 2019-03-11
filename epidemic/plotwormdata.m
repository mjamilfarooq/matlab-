t=tout;
S= yout(:,1);
R= yout(:,2);
Q= yout(:,3);
I= yout(:,4);
J= yout(:,5);

figure(1)
subplot(221);plot(t,S,'b.',t,I,'r.');grid on;legend('Susceptible S(t)','Infected I(t)');
subplot(222);plot(t,R,'b.',t,Q,'r.');grid on;legend('Recovered R(t)','Removed Q(t)');
subplot(212);plot(t,J,'b-');grid on;ylabel('Total Host Infected J(t)');
