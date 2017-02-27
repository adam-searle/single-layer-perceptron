function [ y ] = g(a) %Heaviside function
    if a < 0 
       y = -1;        
    elseif a >= 0
        y  = 1;
    end
end

