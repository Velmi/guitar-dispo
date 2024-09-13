import numpy as np
import matplotlib.pyplot as plt
from scipy import signal

fs = 48000

class BiquadFilter:
    def __init__(self, b0, b1, b2, a0, a1, a2):
        # Normalizing the filter coefficients
        self.b0 = b0 / a0
        self.b1 = b1 / a0
        self.b2 = b2 / a0
        self.a1 = a1 / a0
        self.a2 = a2 / a0
 
        # State variables for the filter (Direct Form I)
        self.z1 = 0.0
        self.z2 = 0.0
 
    def process_sample(self, x):
        # Calculate the filtered output
        y = self.b0 * x + self.b1 * self.z1 + self.b2 * self.z2 - self.a1 * self.z1 - self.a2 * self.z2
 
        # Update the state
        self.z2 = self.z1
        self.z1 = x
 
        return y
 
# Example usage: Create a simple low-pass filter
# Low-pass filter coefficients (these could be calculated or defined)
b0, b1, b2 = 0.014, 0.0, -0.014
a0, a1, a2 = 1.0, -1.9, 0.9
 
# Create an instance of the filter
biquad_filter = BiquadFilter(b0, b1, b2, a0, a1, a2)
 
# Create a frequency ramp (chirp signal)
t = np.linspace(0, 1, fs, endpoint=False)  # 1 second duration
 
# Frequency ramp (chirp signal) from 0 to fs/2 Hz
f0 = 0  # Start frequency
f1 = fs / 2  # End frequency
frequency_ramp = signal.chirp(t, f0=f0, f1=f1, t1=1, method='linear')
 
# Apply the custom biquad filter to the chirp signal
filtered_signal_custom = np.array([biquad_filter.process_sample(x) for x in frequency_ramp])
 
# Plotting the frequency ramp and the filtered signal using the custom filter
plt.figure(figsize=(12, 6))
 
# Plot frequency ramp
plt.subplot(2, 1, 1)
plt.plot(t, frequency_ramp)
plt.title('Frequency Ramp (Chirp)')
plt.xlabel('Time [s]')
plt.ylabel('Amplitude')
 
# Plot filtered signal (custom biquad)
plt.subplot(2, 1, 2)
plt.plot(t, filtered_signal_custom)
plt.title('Filtered Signal (Custom Biquad Filter)')
plt.xlabel('Time [s]')
plt.ylabel('Amplitude')
 
plt.tight_layout()
plt.show()