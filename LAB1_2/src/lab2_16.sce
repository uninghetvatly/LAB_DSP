// System Parameters
N = 200;
n = 0:(N-1);
f0 = 1/50;

// Original Signal
x = sin(2 * %pi * f0 * n);
Px = sum(x.^2) / N; // Power of unquantized signal

// Quantization Levels to test
L_vals = [64, 128, 256];

for i = 1:length(L_vals)
    L = L_vals(i);
    
    // Calculate step size (Dynamic range is [-1, 1], so R = 2)
    delta = 2 / (L - 1); 
    
    // ------------------------------------------------
    // PART A: TRUNCATION
    // ------------------------------------------------
    idx_trunc = floor((x + 1) / delta);
    idx_trunc(idx_trunc > L - 1) = L - 1; 
    xq_trunc = (idx_trunc * delta) - 1; 
    
    e_trunc = xq_trunc - x; 
    Pq_trunc = sum(e_trunc.^2) / N; 
    SQNR_trunc = 10 * log10(Px / Pq_trunc);
    
    // ------------------------------------------------
    // PART B: ROUNDING
    // ------------------------------------------------
    idx_round = round((x + 1) / delta);
    idx_round(idx_round > L - 1) = L - 1; 
    idx_round(idx_round < 0) = 0;
    xq_round = (idx_round * delta) - 1;
    
    e_round = xq_round - x;
    Pq_round = sum(e_round.^2) / N;
    SQNR_round = 10 * log10(Px / Pq_round);
    
    // ------------------------------------------------
    // OUTPUT RESULTS & PLOTTING
    // ------------------------------------------------
    mprintf('Levels (L): %d | SQNR Truncation: %.2f dB | SQNR Rounding: %.2f dB\n', L, SQNR_trunc, SQNR_round);
    
    // Create a 3x2 grid for clear separation
    figure('Name', sprintf('Quantization Analysis (L = %d)', L), 'Position', [100, 100, 1000, 900]);
    
    // --- TRUNCATION COLUMN (Left) ---
    subplot(3, 2, 1);
    plot2d3(n, x);
    title('Original Signal x(n)');
    
    subplot(3, 2, 3);
    plot2d3(n, xq_trunc);
    title(sprintf('Quantized xq(n) - Truncation (L=%d)', L));
    
    subplot(3, 2, 5);
    plot2d3(n, e_trunc);
    title('Truncation Error e(n)');
    
    // --- ROUNDING COLUMN (Right) ---
    subplot(3, 2, 2);
    plot2d3(n, x);
    title('Original Signal x(n)');
    
    subplot(3, 2, 4);
    plot2d3(n, xq_round);
    title(sprintf('Quantized xq(n) - Rounding (L=%d)', L));
    
    subplot(3, 2, 6);
    plot2d3(n, e_round);
    title('Rounding Error e(n)');
end
