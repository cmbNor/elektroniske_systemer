import numpy as np
import matplotlib.pyplot as plt

# Definer tidsarray for en halvperiode (0 til pi)
t = np.linspace(0, np.pi, 1000)

# Definer tyristorutgangen (sinuskurve for halvperiode)
thyristor_output = np.sin(t)

# Definer triggersignalet (0 for de første 75% av halvperioden, deretter 0.2 på tiden 2.2 med varighet 0.2)
trigger_signal = np.zeros_like(t)
start_index = np.abs(t - 2.2).argmin()
end_index = np.abs(t - (2.2 + 0.2)).argmin()
trigger_signal[start_index:end_index] = 0.2

# Beregn RMS-verdien for perioden tyristoren er på
on_period = thyristor_output[start_index:end_index]
rms_value = np.sqrt(np.mean(on_period**2))

# Plot tyristorutgangen
plt.plot(t, thyristor_output, label='Thyristor Output')

# Plot triggersignalet
plt.plot(t, trigger_signal, label='Trigger Signal', linestyle='--')

# Fargelegg området under kurven fra tiden der hvor trigger signal går høyt og ut til kurven treffer grunnlinja
fill_start_index = start_index
fill_end_index = fill_start_index + np.where(thyristor_output[fill_start_index:] <= 0)[0][0] if np.any(thyristor_output[fill_start_index:] <= 0) else len(t)
plt.fill_between(t[fill_start_index:fill_end_index], thyristor_output[fill_start_index:fill_end_index], color='gray', alpha=0.5)

# Legg til RMS-verdi i plottet
plt.text(1, 0.5, f'RMS-verdi: {rms_value:.3f}', fontsize=12, bbox=dict(facecolor='white', alpha=0.5))

# Legg til etiketter og legende
plt.xlabel('Tid')
plt.ylabel('Amplitude')
plt.title('Tyristorutgang og Triggersignal')
plt.legend()

# Legg til grid og minor grid
plt.grid(True)
plt.minorticks_on()
plt.grid(which='both', linestyle=':', linewidth='0.5', color='gray')

# Vis plottet
plt.show()
