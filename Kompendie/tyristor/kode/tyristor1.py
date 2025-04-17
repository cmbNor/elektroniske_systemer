import numpy as np
import matplotlib.pyplot as plt

# Definer tidsarray for fire halvperioder (0 til 4*pi)
t = np.linspace(0, 4*np.pi, 4000)

# Definer tyristorutgangen (sinuskurve for fire halvperioder)
thyristor_output = np.sin(t)

# Definer triggersignalet (0 for de første 75% av hver halvperiode, deretter 0.2 på samme punkt på sinusen med likt mellomrom)
trigger_signal = np.zeros_like(t)
half_period = np.pi
trigger_points = [half_period * (i + 0.7) for i in range(4)]
for point in trigger_points:
    start_index = np.abs(t - point).argmin()
    end_index = np.abs(t - (point + 0.2)).argmin()
    trigger_signal[start_index:end_index] = 0.2

# Plot tyristorutgangen
plt.plot(t, thyristor_output, label='Tyristorspenning')

# Plot triggersignalet
plt.plot(t, trigger_signal, label='Triggersignal', linestyle='--')

# Legg til etiketter og legende
plt.xlabel('Tid')
plt.ylabel('Amplitude')
plt.title('Tyristorspenning og Triggersignal')
plt.legend()

# Legg til grid og minor grid
plt.grid(True)
plt.minorticks_on()
plt.grid(which='both', linestyle=':', linewidth='0.5', color='gray')

# Juster frekvensen slik at 0gjennomgangen til sinusen er midt i et kryss på grid
plt.xticks(np.arange(0, 4*np.pi+1, np.pi/2))

# Vis plottet
plt.show()

