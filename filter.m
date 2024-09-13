pkg load signal

%% bandwidth 450 Hz: 50 Hz
%% bandwidth 2,3 kHz: 1,6 kHz

q = 5;
fs = 48000

midfreq = 460

mid_freq = midfreq / fs

bw = mid_freq / q;
start_freq = mid_freq - bw/2;
stop_freq = mid_freq + bw/2;

filter_taps = 130;
filter_taps_iir = filter_taps/16;
%start_freq = 0.3;
%stop_freq = 0.305;

startfreq = start_freq * fs;
stopfreq = stop_freq * fs;
b_w = bw * fs;

b = fir1(filter_taps, [start_freq, stop_freq]);
%freqz(b);

%[iirb, iira] = besself(filter_taps/2, stop_freq, 'z');
%[iirb, iira] = butter(filter_taps_iir, 0.2);
%[iirb, iira] = butter(filter_taps_iir, [start_freq, stop_freq]);

for i = 1:filter_taps
  printf("%d, ", b(i));
endfor

%printf("\n");

%for i = 1:filter_taps_iir + 1:
  %printf("%d, ", iirbb(i));
%endfor

%for i = 1:filter_taps_iir + 1
  %printf("%d, ", iira(i));
%endfor

%print(b);
printf("\n");
freqz(b)
freqz(iirb, iira);
zplane(iirb, iira);
%freqz(b);
%zplane(b);

