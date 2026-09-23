n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 .* x2;

// Plot 1: x1(n)
subplot(3, 1, 1);
plot2d3(n, x1);
plot(n, x1, 'ro'); // Add red dots
a = gca();
a.data_bounds = [-2, -3; 4, 4]; // [xmin, ymin; xmax, ymax]
title("Signal x1(n)");
xlabel("n");
ylabel("Amplitude");

// Plot 2: x2(n)
subplot(3, 1, 2);
plot2d3(n, x2);
plot(n, x2, 'go'); // Add green dots
a = gca();
a.data_bounds = [-2, -1; 4, 4];
title("Signal x2(n)");
xlabel("n");
ylabel("Amplitude");

// Plot 3: y(n) = x1(n) * x2(n)
subplot(3, 1, 3);
plot2d3(n, y);
plot(n, y, 'bo'); // Add blue dots
a = gca();
a.data_bounds = [-2, -2; 4, 11]; // Increased ymax to 11 to fit the peak value of 9
title("Signal y(n) = x1(n) * x2(n)");
xlabel("n");
ylabel("Amplitude");
