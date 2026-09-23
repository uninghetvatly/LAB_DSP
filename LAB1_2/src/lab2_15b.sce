F0 = 2;  // Analog frequency in kHz
Fs = 50; // Sampling frequency in kHz

n = 0:99; // Define sample range (100 samples)
x = sin(2 * %pi * (F0 / Fs) * n);

f0 = F0 / Fs;

y = x(1:2:$); // Extracts indices 1, 3, 5, ..., 99
n_y = 0:(length(y)-1); // New time index array for y(n)

figure("Name", "Part (b): Downsampling a Sinusoid", "Position", [100, 100, 800, 600]);

subplot(2, 1, 1);
plot2d3(n, x); // Discrete stem plot
title("x(n) for F0 = 2 kHz and Fs = 50 kHz", "fontsize", 3);
xlabel("Sample index (n)");
ylabel("Amplitude");
a1 = gca();
a1.data_bounds = [0, -1.2; 99, 1.2];

subplot(2, 1, 2);
plot2d3(n_y, y);
title("y(n) (Even-numbered samples of x(n))", "fontsize", 3);
xlabel("Sample index (n)");
ylabel("Amplitude");
a2 = gca();
a2.data_bounds = [0, -1.2; 49, 1.2];
