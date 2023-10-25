# modulo para rutas o rutas adsolutas
from pathlib import Path

ruta1 = Path(r'C:\Users\carlo\Documents\dev\myAppDB\rutatest1')

ruta_str = str(ruta1) # ruta en string

# if ruta1.exists():
#     print("La ruta existe.")
# else:
#     print("La ruta no existe.")

# Puedes unir varias partes de una ruta usando el operador /:
ruta = Path('/ruta/a') / 'tu' / 'directorio'


def printPathInString(data):
    return print(data)

def ifItReallyExists(data):
    if data.exists():
        print("path Si existente.")
    else:
        print("path No existente.")
    return

ifItReallyExists(ruta1)
printPathInString(ruta1)
