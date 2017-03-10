% initialise parameters and set up initial conditions
R = 0.5; L = 0.0015; t0 = 0; iL0 = 0; tf = 0.05; 
T1 = 25e-6; T2 = 140e-6; T3 = 550e-6; T4 = 1200e-6; % 4 different input period parameters
tao1 = 140e-6; %tao2=140e-12;
h = 0.002; % set step size, changeable when passing in to heun.m
%--------------------------------------
%             step input      
%--------------------------------------
Vin = @(t) 5; % define input function
[t,vout] = heun(Vin,R,L,t0,iL0,0.04,0.0002);  % call to heun.m
subplot(3,2,[1,2]); %arrange plot positions
plot(t,vout,'b.');  % plot the numerical solution
hold on;
plot(t,Vin(t),'r'); % plot input function on the same plot to give clear comparison betweeen input and output
title('vin = step'); 
% all the code pieces below follow the same pattern
% different tf and h are passed when call heun.m in order to view the whole plot clearly. 

%----------------------------------------
%        impulsive signal input 
%----------------------------------------
Vin = @(t) 4*exp(-(t.^2)/tao1);
[t,vout] = heun(Vin,R,L,t0,iL0,0.04,0.0002);
subplot(3,2,[3,4]);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('exponential input');
%---------------------------------------------
%          exponential decay                 
%---------------------------------------------
Vin = @(t) 4*exp(-(t)/tao1);
[t,vout] = heun(Vin,R,L,t0,iL0,0.02,0.0002);
subplot(3,2,[5,6]);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('impulsive signal input');

%-----------------------------------------------------
%           sine wave input 
%
% with different tf and h to give a clear overview
% -----------------------------------------------------
figure
Vin = @(t) 5*sin(2*pi*t/T1);
[t,vout] = heun(Vin,R,L,t0,iL0,0.00014,0.000002);
subplot(2,2,1);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=25us');

Vin = @(t) 5*sin(2*pi*t/T2);
[t,vout] = heun(Vin,R,L,t0,iL0,0.00014,0.000003);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=140us');

Vin = @(t) 5*sin(2*pi*t/T3);
[t,vout] = heun(Vin,R,L,t0,iL0,0.0014,0.00002);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=550us');

Vin = @(t) 5*sin(2*pi*t/T4);
[t,vout] = heun(Vin,R,L,t0,iL0,0.0014,0.00002);%
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=1200us');


%-------------------------------------------
%          square wave input
% -------------------------------------------
figure
Vin = @(t) 5*square(2*pi*t/T1);
[t,vout] = heun(Vin,R,L,t0,iL0,0.0001,0.000002);
subplot(2,2,1);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=25us');

Vin = @(t) 5*square(2*pi*t/T2);
[t,vout] = heun(Vin,R,L,t0,iL0,0.00014,0.000003);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=140us');

Vin = @(t) 5*square(2*pi*t/T3);
[t,vout] = heun(Vin,R,L,t0,iL0,0.001,0.00001);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=550us');

Vin = @(t) 5*square(2*pi*t/T4);
[t,vout] = heun(Vin,R,L,t0,iL0,0.0013,0.00001);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=1200us');


figure
% --------------------------------------------------
%           sawtooth wave input
% --------------------------------------------------
Vin = @(t) 5*sawtooth(2*pi*t/T1);
[t,vout] = heun(Vin,R,L,t0,iL0,0.0001,0.000002);
subplot(2,2,1);
%subplot(3,2,[5,6]);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=25us');

Vin = @(t) 5*sawtooth(2*pi*t/T2);
[t,vout] = heun(Vin,R,L,t0,iL0,0.00018,0.000002);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=140us');

Vin = @(t) 5*sawtooth(2*pi*t/T3);
[t,vout] = heun(Vin,R,L,t0,iL0,0.0010,0.00001);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=550us');

Vin = @(t) 5*sawtooth(2*pi*t/T4);
[t,vout] = heun(Vin,R,L,t0,iL0,0.0013,0.00001);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('T=12000us');


