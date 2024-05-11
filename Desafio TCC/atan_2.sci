function [a] = atan_2 (y, x)
    
    a = 0;
    if x > 0 then
        a = atan(y/x);
    elseif x < 0 & y >= 0 then
        a = %pi + atan(y/x);
    elseif x < 0 & y < 0 then
        a = - %pi + atan(y/x);
    elseif x == 0 & y > 0 then
        a = %pi/2;
    elseif x == 0 & y < 0 then
        a = -%pi/2;
    end
 
endfunction
