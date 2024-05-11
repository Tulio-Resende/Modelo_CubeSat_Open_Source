function a = atan_2 (y, x)
    
    a = 0;
    if x > 0 then
        a = atan(y/x);
    else if and(x < 0, y >= 0) then
        a = atan(y/x) + %pi;
    else if and(x < 0, y < 0) then
        a = atan(y/x) - %pi;
    else if and(x == 0, y > 0) then
        a = %pi/2;
    else if and(x == 0, y < 0) then
        a = -%pi/2;
    end
 
endfunction
