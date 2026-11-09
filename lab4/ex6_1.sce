x = [1, 2, -3, 2, 1];
h = [1, 0, -1];
nx = 0 : length(x)-1;
nh = 0 : length(h)-1;

ny_start = nx(1) + nh(1);
ny_end = nx($) + nh($);
ny = ny_start : ny_end;
y = zeros(1, length(ny));

for n = 1:length(ny)
    sum_val = 0;
    for k = 1:length(x)
        idx_h = (ny(n) - nx(k)) - nh(1) + 1;
        if (idx_h >= 1 & idx_h <= length(h)) then
            sum_val = sum_val + x(k) * h(idx_h);
        end
    end
    y(n) = sum_val;
end

disp("y(n) = ");
disp(y);
