function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    n_y = n_min:n_max;
    

    y1 = zeros(1, length(n_y));
    y2 = zeros(1, length(n_y));
    
    y1(n1 - n_min + 1) = x1n;
    y2(n2 - n_min + 1) = x2n;

    yn = y1 .* y2;

    yorigin = 1 - n_min;

    clf();
 
    subplot(3,1,1);
    plot2d3(n1, x1n, style=2);
    plot2d(n1, x1n, style=-9);
    xtitle('Signal x1(n)', 'n', 'Amplitude');
    xgrid();
    
    subplot(3,1,2);
    plot2d3(n2, x2n, style=2);
    plot2d(n2, x2n, style=-9);
    xtitle('Signal x2(n)', 'n', 'Amplitude');
    xgrid();

    subplot(3,1,3);
    plot2d3(n_y, yn, style=5);
    plot2d(n_y, yn, style=-9);
    xtitle('Output Signal y(n) = x1(n) . x2(n)', 'n', 'Amplitude');
    xgrid();
endfunction

x1n = [0, 1, 3, -2];
x1origin = 1;

x2n = [1, 1, 2, 3];
x2origin = 2;

[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin);

disp("Output vector yn:");
disp(yn);
disp("Output origin index yorigin:");
disp(yorigin);
