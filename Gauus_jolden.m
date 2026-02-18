x = 5; y = 5; z = 5;   % initial guess

for i = 1:5
    x = (19.62+20*y)/30;
    y = (29.43 + 20*x + 10*z)/30;
    z = (24.525+10*y)/10;
    
    fprintf('Iteration %d: x=%f y=%f z=%f\n', i, x, y, z);
end
