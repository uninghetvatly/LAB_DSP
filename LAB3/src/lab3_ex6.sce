function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    
    yorigin = xorigin + horigin - 1;
    
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    clf();
    
    subplot(3,1,1);
    plot2d3(nx, xn, style=2);
    plot2d(nx, xn, style=-9);
    xtitle('Input Signal x(n)', 'n', 'Amplitude');
    xgrid();
    
    subplot(3,1,2);
    plot2d3(nh, hn, style=2);
    plot2d(nh, hn, style=-9);
    xtitle('Impulse Response h(n)', 'n', 'Amplitude');
    xgrid();
    
    subplot(3,1,3);
    plot2d3(ny, yn, style=5);
    plot2d(ny, yn, style=-9);
    xtitle('Convolution Output y(n) = x(n) * h(n)', 'n', 'Amplitude');
    xgrid();
endfunction

xn = [1, 2, 1];
xorigin = 1;

hn = [1, -1, 1];
horigin = 2;

[yn, yorigin] = convolution(xn, xorigin, hn, horigin);

disp("Output vector yn:");
disp(yn);
disp("Output origin index yorigin:");
disp(yorigin);
