x = [1, 2, -3, 2, 1];
y = [1, 2, -4, 0, 4, -2, -1];
nx = 0 : length(x)-1;
ny = 0 : length(y)-1;

Ex = x.^2;
Ey = y.^2;

figure(1);
clf();

subplot(2, 2, 1);
plot2d3(nx, x);
plot(nx, x, 'r.');
title("Signal x(n)");
xlabel("n"); ylabel("Amplitude");

subplot(2, 2, 2);
plot2d3(ny, y);
plot(ny, y, 'r.');
title("y(n) using convolution");
xlabel("n"); ylabel("Amplitude");

subplot(2, 2, 3);
plot2d3(nx, Ex);
plot(nx, Ex, 'b.');
title("Energy of x(n)");
xlabel("n"); ylabel("Energy");

subplot(2, 2, 4);
plot2d3(ny, Ey);
plot(ny, Ey, 'b.');
title("Energy of y(n)");
xlabel("n"); ylabel("Energy");
