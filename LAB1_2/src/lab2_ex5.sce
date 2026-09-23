n = -1:1;
x = [1, 3, -2];
x_minus_n = x($:-1:1);
x_e = 0.5 * (x + x_minus_n);
x_o = 0.5 * (x - x_minus_n);

// Plot 1
subplot(3, 1, 1);
plot2d3(n, x);
a = gca(); 
a.data_bounds = [-2, -3; 2, 4]; // Sets [xmin, ymin; xmax, ymax]
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");

// Plot 2
subplot(3, 1, 2);
plot2d3(n, x_e);
a = gca(); 
a.data_bounds = [-2, -1; 2, 4]; 
title("Even Component xe(n)");
xlabel("n");
ylabel("Amplitude");

// Plot 3
subplot(3, 1, 3);
plot2d3(n, x_o);
a = gca(); 
a.data_bounds = [-2, -2; 2, 2]; 
title("Odd Component xo(n)");
xlabel("n");
ylabel("Amplitude");
