x = 0; y = 0; z = 0;    % initial guess
w = 1.2;               % relaxation factor (ω)

for i = 1:5
    x_old = x; y_old = y; z_old = z;

    x = (1-w)*x_old + w*(4 - y_old - 2*z_old)/4;
    y = (1-w)*y_old + w*(7 - 3*x - z_old)/5;
    z = (1-w)*z_old + w*(3 - x - y)/3;

    fprintf('Iteration %d: x=%f y=%f z=%f\n', i, x, y, z);
end
