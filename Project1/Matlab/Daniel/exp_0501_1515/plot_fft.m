clc; clear;

name = {'acrylic', 'al_ruler', 'spoon'};
k = 1;

for k=1:3
figure;
for i=1:3
    data = load(['cut_ironcup_', name{k}, '_', num2str(i), '.txt']);
    time = data(:,1)-data(1,1);
    origin = data(:,2);
    offset = median(origin(end-100:end));
    origin = origin-offset;
    
    a = 0.95;
    filtered = filter([1, -a], 1, origin);

    % Plot original data
    subplot(3,2,(i-1)*2+1);
    plot(time, filtered);
    title([name{k}, num2str(i), ' Original Data'],'Interpreter','none');
    ylabel('Amplitude');
    
    % Plot fft
    L = size(time, 1);              % Data length
    Fs = L/time(end)*1000;          % Sample rate
    f = Fs*(0:(L/2))/L;             % Frequency vector
    %w = hanning(L);                 % Window function
    w = 1;                          % Without window functions
    Y = fft(w.*(filtered));     % FFT
    P = log(2*abs(Y(2:size(Y)/2+2)));    % Get half of result
    
    [pks,locs] = findpeaks(P,'MinPeakDistance',length(P)/5);
    
    subplot(3,2,(i-1)*2+2);
    plot(f, P, f(locs), pks, 'or');
    title([name{k}, num2str(i), ' FFT'],'Interpreter','none');
    ylabel('Amplitude');
end
end