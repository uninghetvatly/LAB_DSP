n = 0:99; 
Fs = 5; // Sampling frequency in kHz
F0_array = [0.5, 2, 3, 4.5]; // Analog frequencies in kHz

figure("Name", "Sampling and Aliasing Demonstration", "Position", [100, 100, 800, 1000]);

for i = 1:4
    F0 = F0_array(i);
    x = sin(2 * %pi * (F0 / Fs) * n);
    subplot(4, 1, i);
    plot2d3(n, x);
    title("x(n) for F0 = " + string(F0) + " kHz", "fontsize", 3);
    xlabel("Sample index (n)");
    ylabel("Amplitude");
    a = gca();
    a.data_bounds = [0, -1.2; 99, 1.2];
end
