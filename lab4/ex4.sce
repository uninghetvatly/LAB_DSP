Fs = 44100;           // Sampling frequency in Hz (CD quality)
duration = 2;         // Duration of the audio in seconds
t = 0:1/Fs:duration;  // Discrete time vector

f_signal = 440; 
y = sin(2 * %pi * f_signal * t);

// Apply a simple fade-in/fade-out envelope to smooth the sound
envelope = window('hn', length(y)); // Hanning window
y_processed = y .* envelope;

playsnd(y_processed, Fs);

clf(); 
plot(t(1:500), y_processed(1:500));
title("Processed Audio Waveform (First 500 Samples)");
xlabel("Time (s)");
ylabel("Amplitude");
