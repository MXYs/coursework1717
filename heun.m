
function [t,vout] = heun(Vin,R,L,t0,iL0,tf,h)

    %pass in differential equation    
    func = @(t,iL) (feval(Vin,t)-(R*iL))/L;  
    
    N = round((tf-t0)/h);           %size of array
    [iL,t,vout] = deal(zeros(1,N)); %set up arrays
    
    %initialise arrays
    iL(1) = iL0; t(1) = t0;
    vout(1) = feval(Vin,t0)-(R*iL0);
    
    for i=1:N-1                     %loop for N-1 steps            
        t(i+1) = t0+(h*i);
        k1 = h*feval(func,t(i),iL(i));  % gradient at the left end of interval
        k2 = h*feval(func,t(i)+h, iL(i)+k1); % gradient at the right end of the interval
        
        iL(i+1) = iL(i)+(k1+k2)/2; % next value of inducter current calculated from average gradient
        %and previous value of iL
       
        vout(i+1) = feval(Vin,t(i+1))-(R*iL(i+1));  % evaluate output voltage from iL and Vin
    end
end
