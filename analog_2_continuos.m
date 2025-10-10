clc;
clear all;
close all;

% Load data from .txt file
data = load('Signal Samples\curve1.txt'); % replace with the file name

% Check if the vector is transposed and adjust
if size(data, 2) > 2
    data = data'; % Transpose to ensure 2 columns
end

% Extract time and amplitude
t = data(:, 1); % time
x = data(:, 2); % signal amplitude

% Compute the FFT of the signal
X_fft = fft(x);

% Define the desired number of harmonics for reconstruction (manual adjustment)
num_harmonics = floor(length(x) / 2); % Example value to avoid Gibbs phenomenon

% Limit the FFT to the defined number of harmonics
X_fft(num_harmonics+1:end-num_harmonics) = 0;

% Reconstruct the signal from the FFT
x_rebuilt = ifft(X_fft, 'symmetric');

% Calculate Mean Squared Error
error_mse = mean((x - x_rebuilt).^2);

% Plot the comparison between the original and reconstructed signals
figure;
plot(t, x, 'b', 'DisplayName', 'Original');
hold on;
plot(t, x_rebuilt, 'r--', 'DisplayName', 'FFT Approximation');
title('Comparison of Original and Reconstructed Signals');
xlabel('Time');
ylabel('Amplitude');
legend;

% Plot Mean Squared Error (MSE) in a new window
figure;
plot(t, (x - x_rebuilt).^2, 'g');
title(['Mean Squared Error (MSE): ', num2str(error_mse)]);
xlabel('Time');
ylabel('Squared Error');

% Generate coefficient table
coefficients = table;
coefficients.an = real(X_fft(1:num_harmonics));
coefficients.bn = imag(X_fft(1:num_harmonics));

disp('Table of coefficients a_n and b_n:');
disp(coefficients);
