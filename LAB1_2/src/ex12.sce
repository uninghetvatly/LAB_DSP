t = 0:0.0001:0.1;
xa = 3 * sin(100 * %pi * t);

n = 0:30;
Fs = 300;
xn = 3 * sin(100 * %pi * (n / Fs));

delta = 0.1;
xqn = delta * floor(xn / delta);

// First plot: xa(t)
subplot(3, 1, 1);
plot(t, xa);
xtitle("Analog Signal xa(t)", "t (seconds)", "Amplitude");
a = gca(); // Get current axes
a.y_ticks = tlist(["ticks", "locations", "labels"], -3:1:3, string(-3:1:3)); // Force y-axis numbers from -3 to 3
xgrid(); // Add background grid lines

// Second plot: x(n)
subplot(3, 1, 2);
plot2d3(n, xn); 
plot(n, xn, 'ro'); 
xtitle("Discrete Signal x(n)", "n (samples)", "Amplitude");
a = gca();
a.y_ticks = tlist(["ticks", "locations", "labels"], -3:1:3, string(-3:1:3));
xgrid();

// Third plot: xq(n)
subplot(3, 1, 3);
plot2d3(n, xqn);
plot(n, xqn, 'bo'); 
xtitle("Quantized Signal xq(n) (Truncation)", "n (samples)", "Amplitude");
a = gca();
a.y_ticks = tlist(["ticks", "locations", "labels"], -3:1:3, string(-3:1:3));
xgrid();
