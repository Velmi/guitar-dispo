import sys
import numpy as np
import scipy.signal as signal
import matplotlib.pyplot as plt

#f_s = 2
f_s = 24000

def own_iir_design(Q, fs, f_c):
    omega_0 = 2 * np.pi * f_c / fs
    alpha = np.sin(omega_0) / (2 * Q)

    a_0 = (1 + alpha)
    a_1 = (-2 * np.cos(omega_0)) / a_0
    a_2 = (1 - alpha) / a_0
    b_0 = alpha / a_0
    b_1 = 0
    b_2 = -alpha / a_0

    return [[b_0, b_1, b_2 ,1, a_1, a_2]]

def store_filter_header(filename):
     f = open(filename, "a")
     string =   "#ifndef __FILTER_COEFFS__H__\n\
#define __FILTER_COEFFS__H__\n\
#ifdef __cplusplus__\n\
extern \"C\" {\n\
#endif\n\n\
#include<arm_math.h>\n"
     
     f.write(string)

def store_filter_c_header(filename):
    f = open(filename, "a")
    string = "#include \"iir_filter_coeffs.h\"\n"
    f.write(string)

def store_filter_lut(filename, num):
    string = "\nconst float32_t* iir_coeffs_lut[] = {\n"
    f = open(filename, "a")
    f.write(string)

    for i in range(0, num):
        f.write("\t\tiir_coeffs" + str(i) + ",\n")

    f.write("iir")
    f.write("\n};")

def store_filter_footer(filename):
    f = open(filename, "a")
    string = "\n#ifdef __cplusplus__\n\
}\n\
#endif\n\
#endif /* __FILTER_COEFFS__H__ */\n"
    f.write(string)
    f.close()

def store_filter(b, a, filename, filterindex):
    f = open(filename, "a")
    string = "\nfloat32_t iir_coeffs" + str(filterindex) + "[] = {\n\
" + str(b[0]) + "f," + str(b[1]) + "f," + str(b[2]) + "f," + str(a[1]) + "f," + str(a[2]) + "f\n\
};"
    f.write(string)

    
def freqz(b, a):
    w, h = signal.freqz(b, a, fs=f_s)

    plt.plot(w, 20*np.log10(np.abs(h)))
    plt.xscale('log')
    plt.xlabel("f / Hz")
    plt.ylabel("H / db")
    plt.grid()
    plt.show()

if __name__ == "__main__":

    filename = "../software/audio/iir_filter_coeffs.c"
    num_filters = 32
    filter_order = 1

    filt_max_mid_freq = 2300
    filt_min_mid_freq = 460

    q = 5
    step = (filt_max_mid_freq - filt_min_mid_freq) / num_filters

    store_filter_c_header(filename)

    for i in range(0, num_filters):
        
        mid_freq = i * step + filt_min_mid_freq
        #mid_freq = (filt_max_mid_freq + filt_min_mid_freq) / 2
        bw = mid_freq / q
        start_freq = mid_freq - bw/2
        end_freq = mid_freq + bw/2

        print("start: ", start_freq)
        print("end: ", end_freq)
        print("mid freq: ", mid_freq)
        print("bw: ", bw)

        #ba = signal.iirfilter(N=filter_order,
         #                     fs=f_s,
          #                    Wn=[start_freq, end_freq],
           #                   btype='bandpass',
            #                  ftype='bessel',
             #                 output='sos')
        
        ba = own_iir_design(q, f_s, mid_freq)

        print(ba)
        
        b = [np.float32(ba[0][0]), np.float32(ba[0][1]), np.float32(ba[0][2])]
        a = [-np.float32(ba[0][3]), -np.float32(ba[0][4]), -np.float32(ba[0][5])]

        poles = np.roots(a)
        stable = np.all(np.abs(poles) < 1)
        print("Stable?: ", stable)

        #print("coeffs b:")
        #print(b)
        #print("coeffs a:")
        #print(a)
        #print("----")

        freqz(b, a)
        store_filter(b, a, filename, i)
        zpk = signal.tf2zpk(b, a)
        #print("zeros and poles:")
        #print(zpk)

        t = np.arange(0, 0.01, 1/44100)
        sig = np.sin(3000 * t * 2*np.pi)
        #plt.plot(sig)
        #plt.show()

        #sig_filtered = signal.filtfilt(b, a, sig)

        #plt.plot(sig_filtered)
        #plt.show()


    f = open(filename, 'a')
    f.write("\nfloat32_t iir[] = {1, 0, 0, 0, 0};")
    f.close()
    store_filter_lut(filename, num_filters)
    #store_filter_footer(filename)
    print("bs type: ", type(b[0]))
