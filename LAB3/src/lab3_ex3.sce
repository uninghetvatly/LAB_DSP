function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1);
    
    N = length(xn);
    yorigin = N - xorigin + 1;
    
    tx = (1:N) - xorigin;
    ty = (1:N) - yorigin;
    
    clf(); 
    
    // --- Plot original signal x(n) ---
    subplot(2,1,1);
    plot2d3(tx, xn, style=2); 
    plot2d(tx, xn, style=-9); 
    
    xtitle('Original Signal x(n)', 'n', 'Amplitude');
    xgrid();
    
    // --- Plot folded signal y(n) ---
    subplot(2,1,2);
    plot2d3(ty, yn, style=5);  
    plot2d(ty, yn, style=-9);
    xtitle('Folded Signal y(n) = x(-n)', 'n', 'Amplitude');
    xgrid();
endfunction

xn = [-2, 1, 4, 3, 5];
xorigin = 2;


[yn, yorigin] = fold(xn, xorigin);


disp("Output vector yn:");
disp(yn);
disp("Output origin index yorigin:");
disp(yorigin);
