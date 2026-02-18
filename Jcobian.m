clear
clc
x = 0; y = 0; z = 0;    % initial guess

for i = 1:5
    x_new = (4 - y - 2*z)/4;
    y_new = (7 - 3*x - z)/5;
    z_new = (3 - x - y)/3;

    x = x_new;
    y = y_new;
    z = z_new;

    fprintf('Iteration %d: x=%f y=%f z=%f\n', i, x, y, z);
end
