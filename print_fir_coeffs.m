filter_taps = 32;
start_freq = 0.35;
stop_freq = 0.45;

b = fir1(filter_taps, [start_freq, stop_freq]);

for i = 1:33
  printf("%d, ", b(i));
endfor
printf("\n");

