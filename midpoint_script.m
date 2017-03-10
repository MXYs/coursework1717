
ti=0;ii=0;vi=0;tf=0.04;R=0.5;L=0.0015;h=0.0002;
T1 = 25e-6; T2 = 140e-6; T3 = 550e-6; T4 = 1200e-6;
%set up differential equation
func=@(i,v) (v-R*i)/L; 

%step of 5 V ---------------------------------
input=@(t) 5;
vi=5;
[t,vout]=midpoint(func,ti,ii,vi,tf,h,input);
subplot(2,2,[1,2]);
plot(t,vout,'b.');  %plot the numerical solution
hold on;
plot(t,input(t),'r');
title('vin = step');
%----------------------------------------------
%inpulsive signal one --------------------------
vamp=4;
tau=140*10^-6;
input=@(t) vamp*exp(-(t.^2)/tau);
vi=4;
[t,vout]=midpoint(func,ti,ii,vi,0.04,0.0002,input);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('impulsive signal input');
%------------------------------------------------

%inpulsive signal two -------------------------
vamp=4;
tau=140*10^-6;
input=@(t) vamp*exp(-(t)/tau);
T=120*10^-6;
[t,vout]=midpoint(func,ti,ii,vi,0.01,0.0002,input);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('impulsive signal decay input');


figure
%sine wave input -------------------------------------
vamp=5;
vi=0;
input=@(t) vamp*sin(2*pi*(1/T1)*t);
[t,vout]=midpoint(func,ti,ii,vi,0.00014,0.000002,input);
subplot(2,2,1);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=25us');
%---------------
input=@(t) vamp*sin(2*pi*(1/T2)*t);
[t,vout]=midpoint(func,ti,ii,vi,0.00014,0.000003,input);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=140us');
%----------
input=@(t) vamp*sin(2*pi*(1/T3)*t);
[t,vout]=midpoint(func,ti,ii,vi,0.0014,0.00002,input);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=550us');
%--------
input=@(t) vamp*sin(2*pi*(1/T4)*t);
[t,vout]=midpoint(func,ti,ii,vi,0.0014,0.00002,input);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=1200us');
%----------------------------------------------------




%square wave input -----------------------------------
figure
vi=5;
input=@(t) vamp*square(2*pi*t/T1);
[t,vout]=midpoint(func,ti,ii,vi,0.00007,0.000002,input);
subplot(2,2,1);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=25us');
%--------------
input=@(t) vamp*square(2*pi*t/T2);
[t,vout]=midpoint(func,ti,ii,vi,0.00014,0.000003,input);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=140us');
%--------------
input=@(t) vamp*square(2*pi*t/T3);
[t,vout]=midpoint(func,ti,ii,vi,0.001,0.00001,input);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=550us');
%---------------
input=@(t) vamp*square(2*pi*t/T4);
[t,vout]=midpoint(func,ti,ii,vi,0.0013,0.00001,input);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=1200us');
%-----------------------------


%sawtooth ------------------------------------------------------
figure
vi=0;
input=@(t) vamp*sawtooth(2*pi*t/T1);
[t,vout]=midpoint(func,ti,ii,vi,0.0001,0.000002,input);
subplot(2,2,1);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=25us');
%---------------
input=@(t) vamp*sawtooth(2*pi*t/T2);
[t,vout]=midpoint(func,ti,ii,vi,0.00018,0.000002,input);
subplot(2,2,2);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=140us');
%----------------
input=@(t) vamp*sawtooth(2*pi*t/T3);
[t,vout]=midpoint(func,ti,ii,vi,0.0010,0.00001,input);
subplot(2,2,3);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=550us');
%--------------
input=@(t) vamp*sawtooth(2*pi*t/T4);
[t,vout]=midpoint(func,ti,ii,vi,0.0013,0.00001,input);
subplot(2,2,4);
plot(t,vout,'b.');
hold on;
plot(t,input(t),'r');
title('T=1200us');
