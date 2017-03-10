R = 0.5; L = 0.0015; t0 = 0; iL0 = 0;    %set up initial condition and parameters
T1 = 25e-6; T2 = 140e-6; T3 = 550e-6; T4 = 1200e-6; % period parameter for input

% step input -----------------------------------
Vin = @(t) 5;   % set up input function
[t,vout] = ralston(Vin,R,L,t0,iL0,0.05,0.002); % call to ralston.m
subplot(2,2,[1,2]); % arrange plot position
plot(t,vout,'b.'); % plot vout against time 
hold on;
plot(t,Vin(t),'r'); % plot inut on the same plot for easy comparison
title('Vout with step input'); % name the plot
% All the code pieces below follow a similiar pattern
% tf and h passed in to ralston.m are different every time 
% to give a clear overview of the plot

% -------------- exponential input ----------------------------
Vin = @(t) 4*exp(-(t.^2)/0.00014); %set up input function
[t,vout] = ralston(Vin,R,L,t0,iL0,0.05,0.002); % call to ralston.m
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('for exponential input');

% ----------------- exp input 2 ---------------------------------
Vin = @(t) 4*exp(-t/0.00014);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.05,0.002); 
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('for impulsive input');


% ---------------  sine wave input ---------------------------------
% 4 pieces of code are duplicated to give 4 plots on 4 different input periods:T1,T2,T3 and T4 
figure
Vin = @(t) 5*sin(2*pi*t/T1);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.00014,0.000002);
subplot(2,2,1);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=25us');

Vin = @(t) 5*sin(2*pi*t/T2);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.00014,0.000003);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=140us');

Vin = @(t) 5*sin(2*pi*t/T3);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.0014,0.00002);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=550us');

Vin = @(t) 5*sin(2*pi*t/T4);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.0014,0.00002);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=1200us');


% ------------- square wave input ------------------------------
figure
Vin = @(t) 5*square(2*pi*t/T1);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.0001,0.000002);
subplot(2,2,1);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=25us');

Vin = @(t) 5*square(2*pi*t/T2);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.00014,0.000003);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=140us');

Vin = @(t) 5*square(2*pi*t/T3);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.001,0.00001);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=550us');

Vin = @(t) 5*square(2*pi*t/T4);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.0013,0.00001);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=1200us');

% --------------- sawtooth wave input ------------------------------
figure
Vin = @(t) 5*sawtooth(2*pi*t/T1);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.0001,0.000002);
subplot(2,2,1);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=25us');

Vin = @(t) 5*sawtooth(2*pi*t/T2);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.00018,0.000002);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=140us');

Vin = @(t) 5*sawtooth(2*pi*t/T3);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.0010,0.00001);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=550us');

Vin = @(t) 5*sawtooth(2*pi*t/T4);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.0013,0.00001);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=1200us');
