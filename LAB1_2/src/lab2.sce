// ==========================================
// Exercise 2: Unit Step Signal
// ==========================================
scf(2); clf();
n2 = -5:5;
msignal2 = bool2s(n2 >= 0);
plot2d3(n2, msignal2);
title("Exercise 2: Unit Step Signal u(n)");
xlabel("n"); ylabel("Amplitude");

// ==========================================
// Exercise 3: Unit Sample (Impulse) Signal
// ==========================================
scf(3); clf();
n3 = -5:5;
msignal3 = bool2s(n3 == 0);
plot2d3(n3, msignal3);
title("Exercise 3: Unit Sample Sequence");
xlabel("n"); ylabel("Amplitude");

// ==========================================
// Exercise 4: Unit Ramp Signal
// ==========================================
scf(4); clf();
n4 = -5:5;
ur = n4 .* bool2s(n4 >= 0);
plot2d3(n4, ur);
title("Exercise 4: Unit Ramp Signal ur(n)");
xlabel("n"); ylabel("Amplitude");

// ==========================================
// Exercise 5: Even and Odd Components
// ==========================================
scf(5); clf();
n5 = -1:1;
x5 = [1, 3, -2];
x_minus_n = x5($:-1:1);
x_e = 0.5 * (x5 + x_minus_n);
x_o = 0.5 * (x5 - x_minus_n);

subplot(3, 1, 1);
plot2d3(n5, x5);
title("Original Signal x(n)"); xlabel("n"); ylabel("Amplitude");

subplot(3, 1, 2);
plot2d3(n5, x_e);
title("Even Component xe(n)"); xlabel("n"); ylabel("Amplitude");

subplot(3, 1, 3);
plot2d3(n5, x_o);
title("Odd Component xo(n)"); xlabel("n"); ylabel("Amplitude");

// ==========================================
// Exercise 6: Signal Addition
// ==========================================
scf(6); clf();
n6 = -1:3;
x1_6 = [0, 0, 1, 3, -2];
x2_6 = [0, 1, 2, 3, 0];
y6 = x1_6 + x2_6;

subplot(3, 1, 1);
plot2d3(n6, x1_6); plot(n6, x1_6, 'ro');
title("Signal x1(n)"); xlabel("n"); ylabel("Amplitude");

subplot(3, 1, 2);
plot2d3(n6, x2_6); plot(n6, x2_6, 'go');
title("Signal x2(n)"); xlabel("n"); ylabel("Amplitude");

subplot(3, 1, 3);
plot2d3(n6, y6); plot(n6, y6, 'bo');
title("Signal y(n) = x1(n) + x2(n)"); xlabel("n"); ylabel("Amplitude");

// ==========================================
// Exercise 7: Signal Multiplication
// ==========================================
scf(7); clf();
n7 = -1:3;
x1_7 = [0, 0, 1, 3, -2];
x2_7 = [0, 1, 2, 3, 0];
y7 = x1_7 .* x2_7; // Note: Use .* for element-wise multiplication

subplot(3, 1, 1);
plot2d3(n7, x1_7); plot(n7, x1_7, 'ro');
title("Signal x1(n)"); xlabel("n"); ylabel("Amplitude");

subplot(3, 1, 2);
plot2d3(n7, x2_7); plot(n7, x2_7, 'go');
title("Signal x2(n)"); xlabel("n"); ylabel("Amplitude");

subplot(3, 1, 3);
plot2d3(n7, y7); plot(n7, y7, 'bo');
title("Signal y(n) = x1(n) * x2(n)"); xlabel("n"); ylabel("Amplitude");

// ==========================================
// Exercise 8: Manipulations (Folding, Advance, Scaling)
// ==========================================
nx = -2:1;
x8 = [1, -2, 3, 6];

// 8.1 Folding
scf(81); clf();
subplot(2, 1, 1);
plot2d3(nx, x8); plot(nx, x8, 'ro');
title("Original Signal x(n)"); xlabel("n"); ylabel("Amplitude");

ny1 = -1:2;
y1 = [6, 3, -2, 1];
subplot(2, 1, 2);
plot2d3(ny1, y1); plot(ny1, y1, 'bo');
title("y1(n) = x(-n) (Folding)"); xlabel("n"); ylabel("Amplitude");

// 8.2 Advance
scf(82); clf();
subplot(2, 1, 1);
plot2d3(nx, x8); plot(nx, x8, 'ro');
title("Original Signal x(n)"); xlabel("n"); ylabel("Amplitude");

ny2 = -5:-2;
y2 = [1, -2, 3, 6];
subplot(2, 1, 2);
plot2d3(ny2, y2); plot(ny2, y2, 'mo');
title("y2(n) = x(n+3) (Advance)"); xlabel("n"); ylabel("Amplitude");

// 8.3 Scaling & Shifting
scf(83); clf();
subplot(2, 1, 1);
plot2d3(nx, x8); plot(nx, x8, 'ro');
title("Original Signal x(n)"); xlabel("n"); ylabel("Amplitude");

ny3 = -3:0;
y3 = [12, 6, -4, 2];
subplot(2, 1, 2);
plot2d3(ny3, y3); plot(ny3, y3, 'go');
title("y3(n) = 2x(-n-2)"); xlabel("n"); ylabel("Amplitude");
