nx = -2:1;
x = [1, -2, 3, 6];
scf(1); // Opens first graphics window
subplot(2, 1, 1);
plot2d3(nx, x); plot(nx, x, 'ro');
title("Original Signal x(n)"); xlabel("n"); ylabel("Amplitude");

ny1 = -1:2;
y1 = [6, 3, -2, 1];
subplot(2, 1, 2);
plot2d3(ny1, y1); plot(ny1, y1, 'bo');
title("y1(n) = x(-n) (Folding)"); xlabel("n"); ylabel("Amplitude");

scf(2); // Opens second graphics window
subplot(2, 1, 1);
plot2d3(nx, x); plot(nx, x, 'ro');
title("Original Signal x(n)"); xlabel("n"); ylabel("Amplitude");

ny2 = -5:-2;
y2 = [1, -2, 3, 6];
subplot(2, 1, 2);
plot2d3(ny2, y2); plot(ny2, y2, 'mo'); // Magenta dots
title("y2(n) = x(n+3) (Advance)"); xlabel("n"); ylabel("Amplitude");

scf(3); // Opens third graphics window
subplot(2, 1, 1);
plot2d3(nx, x); plot(nx, x, 'ro');
title("Original Signal x(n)"); xlabel("n"); ylabel("Amplitude");

ny3 = -3:0;
y3 = [12, 6, -4, 2];
subplot(2, 1, 2);
plot2d3(ny3, y3); plot(ny3, y3, 'go'); // Green dots
title("y3(n) = 2x(-n-2)"); xlabel("n"); ylabel("Amplitude");
