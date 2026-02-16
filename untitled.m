clear;
clc;


% Define the function
f = @(x) x^3 - x - 2;

% Initial guesses
xl = 1;
xu = 2;

% Number of iterations
n = 10;

% Check initial condition
if f(xl)*f(xu) > 0
    disp('Root does not lie between xl and xu');
else
    fprintf('Iter\t xl\t\t xu\t\t xr\t\t f(xr)\n');

    for i = 1:n
        xr = xu - (f(xu)*(xl - xu))/(f(xl) - f(xu));

        fprintf('%d\t %.4f\t %.4f\t %.4f\t %.4f\n', i, xl, xu, xr, f(xr));

        if f(xl)*f(xr) < 0
            xu = xr;
        else
            xl = xr;
        end
    end

    fprintf('\nApproximate root = %.4f\n', xr);
end

