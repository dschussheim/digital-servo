_ADCxx outputs ADCxx signal to all DAC channels, and ADCxx[15:12] to the leds (led0 = ADCxx[15] et cetera).

_allADC outputs ADC01 to DAC00 and DAC01, ADC10 to DAC10, and ADC11 to DAC11. 
led_out <= {ADC11[15],ADC10[15],ADC01[15],ADC01[15]}, ADC00 cannot work in two wire mode on my baseboard
with the KX2 because the second bit is wired to inputs that do not form an LVDS pair.

May try 1 wire mode at some point if it seems worth it to figure that out.