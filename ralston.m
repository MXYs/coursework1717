function [t,vout] = ralston(Vin,R,L,t0,iL0,tf,h)

    func = @(t,iL) (feval(Vin,t)-(R*iL))/L; %set up differential equation
    N = round((tf-t0)/h);   %set up array size
    [iL,t,vout] = deal(zeros(1,N)); %initialise arrays
    iL(1) = iL0; t(1) = t0;
    vout(1) = feval(Vin,t0)-(R*iL0);
    
    for i=1:N-1 %loop for N-1 steps
        t(i+1) = t0+(h*i); 
        k1 = h*feval(func,t(i),iL(i)); % evaluate func at t and iL
        k2 = h*feval(func,t(i)+(2*h/3),iL(i)+(2*k1/3)); % evaluate func second time over the same interval
        iL(i+1) = iL(i)+(k1+(3*k2))/4; % next iL calculated from previous iL
        vout(i+1) = feval(Vin,t(i+1))-(R*iL(i+1)); % vout calculated from iL(i+1)
    end
end
