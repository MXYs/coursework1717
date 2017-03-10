function [t,vout] = midpoint(func,ti,ii,vi,tf,h,input)
N=round((tf-ti)/h); %set up array size

%set up arrays:
ia=zeros(1,N); ta=zeros(1,N); vin=zeros(1,N);

%initialise arrays
ia(1)=ii; ta(1)=ti; vin(1)=vi;

%loop for N-1 steps
for j = 1:N-1 
    ta(j+1)=ta(j)+h;
    vin(j+1)=feval(input,ta(j+1));  %input evaluated at next value of t
    k1=feval(func,ia(j),vin(j)); % gradient di/dt at ta(j)
    midpointi=(ia(j)+0.5*k1*h); 
    midpointv=feval(input,ta(j)+0.5*h);
    k2=feval(func,midpointi,midpointv); %gradient at midpoint
    ia(j+1) = ia(j)+k2*h; %ia evaluated from midpoint gradient and previous values of ia 
end
t=ta; 
vout = vin-0.5*ia;
