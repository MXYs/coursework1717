R = 0.5; L = 0.0015; t0 = 0; iL0 = 0;
T1 = 25e-6; T2 = 140e-6; T3 = 550e-6; T4 = 1200e-6;

% step input -----------------------------------
Vin = @(t) 5;
[t,vout] = ralston(Vin,R,L,t0,iL0,0.05,0.002);
subplot(2,2,[1,2]);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('Vout with step input');


% exponential input ----------------------------
Vin = @(t) 4*exp(-(t.^2)/0.00014);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.05,0.002);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('for exponential input');

% exp input 2 ---------------------------------
Vin = @(t) 4*exp(-t/0.00014);
[t,vout] = ralston(Vin,R,L,t0,iL0,0.05,0.002);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,Vin(t),'r');
title('for impulsive input');


% sine wave input ---------------------------------------
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


% square wave input ---------------------------------------
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

% sawtooth wave input ------------------------------------------
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
