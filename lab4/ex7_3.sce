x = [1, 2, -3, 2, 1];
y = [4, -4, -3, 0, 3]; 
n_idx = 0 : 4; 

Ex = x.^2;
Ey = y.^2;

figure(2);
clf();

subplot(2, 2, 1);
plot2d3(n_idx, x);
plot(n_idx, x, 'r.');
title("Signal x(n)");
xlabel("n"); ylabel("Amplitude");

subplot(2, 2, 2);
plot2d3(n_idx, y);
plot(n_idx, y, 'r.');
title("Signal y(n)");
xlabel("n"); ylabel("Amplitude");

subplot(2, 2, 3);
plot2d3(n_idx, Ex);
plot(n_idx, Ex, 'b.');
title("Energy of x(n)");
xlabel("n"); ylabel("Energy");

subplot(2, 2, 4);
plot2d3(n_idx, Ey);
plot(n_idx, Ey, 'b.');
title("Energy of y(n)");
xlabel("n"); ylabel("Energy");
