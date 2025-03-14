# Audio

On manipule des fichiers au format `#!py wav` avec les modules suivants:

```python linenums='1'
import scipy.io.wavfile as swf
import numpy as np

'''
Lecture d'un fichier wav.
On récupère:
- rate : fréquence d'échantillonnage (en général 44100 Hz)
- data :  un tableau 2D (ou 1D si c'est du mono), avec les valeurs du canal gauche
et du canal droit, au format numpy.
'''

rate, data = swf.read('fichier_audio.wav')


'''
Écriture dans un fichier audio d'un tableau 2D nommé tab (converti au format numpy):
'''

swf.write('fichier_audio.wav', rate, np.array(tab, dtype=np.int16))
```

Voir également la [documentation du module](https://docs.scipy.org/doc/scipy/reference/generated/scipy.io.wavfile.read.html){:target="_blank"} et [le format wav](https://fr.wikipedia.org/wiki/Waveform_Audio_File_Format){:target="_blank"} .