import matplotlib.pyplot as plt


def plot_fft(title, fd_hz, f1, s1, label1, f2, s2, label2):
    plt.figure()
    plt.plot(f1, s1, label=label1)
    plt.plot(f2, s2, label=label2)
    plt.xlabel("f, Hz")
    plt.ylabel("Sa, dB")
    plt.xlim([0, fd_hz / 2])
    plt.title(title)
    plt.legend()
    plt.show()
