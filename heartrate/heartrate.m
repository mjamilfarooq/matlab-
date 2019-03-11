%% Loading Estimated Parameters for each Subject
clear all;
Tsim = 35;
%% Subject 1

a1 = 2.103;
a2 = 1.964;
a3 = 1.717;
a4 = 0.028;
a5 = 0.038;

u = 7.0; % 7.0 km/hr Speed of Treadmill

sim('heartrate_treadmil');
t = tout;
x1_7 = yout(:,1);
x2_7 = yout(:,2);
v = yout(:,3);
g = yout(:,4);

u = 6.0; % 6.0 km/hr Speed of Treadmill
sim('heartrate_treadmil');
t = tout;
x1_6 = yout(:,1);


u = 5.0; % 6.0 km/hr Speed of Treadmill
sim('heartrate_treadmil');
t = tout;
x1_5 = yout(:,1);

f=figure(1);
subplot(211); plot(t,x1_7,'r',t,x1_6,'b',t,x1_5,'c');
title('Subject 1');grid on;
legend('7km/hr','6km/hr','5km/hr');

%% Subject 2

a1 = 1.844;
a2 = 2.747;
a3 = 5.263;
a4 = 0.099;
a5 = 0.068;

u = 7.0; % 7.0 km/hr Speed of Treadmill

sim('heartrate_treadmil');
t = tout;
x1_7 = yout(:,1);
x2_7 = yout(:,2);
v = yout(:,3);
g = yout(:,4);

u = 6.0; % 6.0 km/hr Speed of Treadmill
sim('heartrate_treadmil');
t = tout;
x1_6 = yout(:,1);


u = 5.0; % 6.0 km/hr Speed of Treadmill
sim('heartrate_treadmil');
t = tout;
x1_5 = yout(:,1);


subplot(212); plot(t,x1_7,'r',t,x1_6,'b',t,x1_5,'c');
title('Subject 2');grid on;
legend('7km/hr','6km/hr','5km/hr');


