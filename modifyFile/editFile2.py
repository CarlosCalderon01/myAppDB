# Define la ruta del archivo y su directorio
from os import path

# from pathlib import Path
ruta_directorio = path('C:/Users/carlo/Documents/dev/myAppDB/Generator')
ruta_archivo = ruta_directorio / 'mi_archivo.txt'

# Verifica si el directorio existe, y si no, créalo
if not ruta_directorio.exists():
    ruta_directorio.mkdir(parents=True)

# Abre el archivo en modo escritura ('w')
with ruta_archivo.open(mode='w') as archivo:
    archivo.write("Hola, este es un ejemplo de escritura en archivo.\n")
    archivo.write("Puedes añadir más líneas de texto si lo deseas.\n")

print(f"Se ha creado y escrito en el archivo '{ruta_archivo}'")

