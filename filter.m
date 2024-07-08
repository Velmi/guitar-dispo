pkg load signal

%% bandwidth 450 Hz: 50 Hz
%% bandwidth 2,3 kHz: 1,6 kHz

q = 6;

mid_freq = 0.23

bw = mid_freq / q
start_freq = mid_freq - bw;
stop_freq = mid_freq + bw;

filter_taps = 32;
filter_taps_iir = filter_taps/8;
%start_freq = 0.3;
%stop_freq = 0.305;

b = fir1(filter_taps, [start_freq, stop_freq]);
%freqz(b);

%[iirb, iira] = besself(filter_taps/2, stop_freq, 'z');
%[iirb, iira] = butter(filter_taps_iir, 0.2);
[iirb, iira] = butter(filter_taps_iir, [start_freq, stop_freq]);

for i = 1:33
  %printf("%d, ", b(i));
endfor

printf("\n");

for i = 1:33
%  printf("%d, ", iir(i));
endfor

printf("\n");

freqz(iirb, iira);
zplane(iirb, iira);
%freqz(b);
%zplane(b);

