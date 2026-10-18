function [yn, yorigin] = delay(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;
    
    N = length(xn);
    tx = (1:N) - xorigin;
    ty = (1:N) - yorigin;
    
    clf(); 
    
    // Plot original signal x(n)
    subplot(2,1,1);
    plot2d3(tx, xn, style=2); 
    plot2d(tx, xn, style=-9); 
    xtitle('Original Signal x(n)', 'n', 'Amplitude');
    xgrid();
    
    // Plot delayed signal y(n)
    subplot(2,1,2);
    plot2d3(ty, yn, style=5); 
    plot2d(ty, yn, style=-9);
    xtitle('Delayed Signal y(n) = x(n - ' + string(k) + ')', 'n', 'Amplitude');
    xgrid();
endfunction

xn = [1, -2, 3, 6];
xorigin = 3;
k = 1;

[yn, yorigin] = delay(xn, xorigin, k);

disp("Output vector yn:");
disp(yn);
disp("Output origin index yorigin:");
disp(yorigin);
