import sys
import numpy as np
import scipy.signal as signal
import matplotlib.pyplot as plt

#f_s = 2
f_s = 24000

def store_filter_header(filename):
     f = open(filename, "a")
     string =   "#ifndef __FIR_FILTER_COEFFS__H__\n\
#define __FIR_FILTER_COEFFS__H__\n\
#ifdef __cplusplus__\n\
extern \"C\" {\n\
#endif\n\n\
#include<arm_math.h>\n"
     
     f.write(string)

def store_filter_c_header(filename):
    f = open(filename, "a")
    string = "#include \"fir_filter_coeffs.h\"\n"
    f.write(string)

def store_filter_lut(filename, num):
    string = "\nconst float32_t* fir_coeffs_lut[] = {\n"
    f = open(filename, "a")
    f.write(string)

    for i in range(0, num):
        f.write("\t\tfir_coeffs" + str(i) + ",\n")

    f.write("\n};")

def store_filter_footer(filename):
    f = open(filename, "a")
    string = "\n#ifdef __cplusplus__\n\
}\n\
#endif\n\
#endif /* __FIR_FILTER_COEFFS__H__ */\n"
    f.write(string)
    f.close()

def store_filter(b, filename, filterindex):
    f = open(filename, "a")
    string = "\nfloat32_t fir_coeffs" + str(filterindex) + "[] = {\n"

    f.write(string)

    for coeff in b:
        f.write(str(coeff) + "f,")
    
    f.write("};")

    
def freqz(b, a):
    w, h = signal.freqz(b, a, fs=f_s)

    plt.plot(w, 20*np.log10(np.abs(h)))
    plt.xscale('log')
    plt.xlabel("f / Hz")
    plt.ylabel("H / db")
    plt.ylim(-80, 0)
    plt.grid()
    plt.show()

if __name__ == "__main__":

    filename = "../software/audio/fir_filter_coeffs.c"
    num_filters = 32
    filter_order = 130

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

        b64 = signal.firwin(filter_order,
                            window='hamming',
                            cutoff=[start_freq, end_freq],
                            fs=f_s,
                            pass_zero='bandpass')
        
        b = list()

        #for coeff in b64:
            #b.append(np.float32(coeff))
        
        #for j in range(0, 99):
            #b.append(np.float32(0))

        for k in range(0, filter_order):
            b.append(np.float32(b64[filter_order - k - 1]))

        print("sum of coeffs: " , np.sum(b))

        #print("coeffs b:")
        #print(b)
        #print("----")

        freqz(b, 1)
        store_filter(b, filename, i)
        zpk = signal.tf2zpk(b, 1)
        #print("zeros and poles:")
        #print(zpk)

        t = np.arange(0, 0.01, 1/f_s)
        sig = np.sin(3000 * t * 2*np.pi)
        #plt.plot(sig)
        #plt.show()

        #sig_filtered = signal.filtfilt(b, 1, sig)

        #plt.plot(sig_filtered)
        #plt.show()

    store_filter_lut(filename, num_filters)
    #store_filter_footer(filename)
    print("bs type: ", type(b[0]))
