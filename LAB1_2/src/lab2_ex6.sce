n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 + x2;

// Plot 1: x1(n)
subplot(3, 1, 1);
plot2d3(n, x1);
plot(n, x1, 'ro'); 
a = gca();
a.data_bounds = [-2, -3; 4, 4]; // X from -2 to 4, Y from -3 to 4
title("Signal x1(n)");
xlabel("n");
ylabel("Amplitude");

// Plot 2: x2(n)
subplot(3, 1, 2);
plot2d3(n, x2);
plot(n, x2, 'go'); 
a = gca();
a.data_bounds = [-2, -1; 4, 4]; // X from -2 to 4, Y from -1 to 4
title("Signal x2(n)");
xlabel("n");
ylabel("Amplitude");

// Plot 3: y(n) = x1(n) + x2(n)
subplot(3, 1, 3);
plot2d3(n, y);
plot(n, y, 'bo'); 
a = gca();
a.data_bounds = [-2, -3; 4, 7]; // X from -2 to 4, Y from -3 to 7
title("Signal y(n) = x1(n) + x2(n)");
xlabel("n");
ylabel("Amplitude");
