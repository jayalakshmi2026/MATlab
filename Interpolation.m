clear
clc
x = [1 2 3];
y = [2 4 6];

xi = 2.5;     % value to interpolate
n = length(x);
yi = 0;

for i = 1:n
    L = 1;
    for j = 1:n
        if i ~= j
            L = L * (xi - x(j)) / (x(i) - x(j));
        end
    end
    yi = yi + L * y(i);
end

fprintf('Interpolated value = %f\n', yi);
