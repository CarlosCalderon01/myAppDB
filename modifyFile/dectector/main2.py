from pathlib import Path

# Ruta de la carpeta que deseas explorar
carpeta = Path(r'C:\Users\carlo\Documents\dev\myAppDB')

# Utiliza el método glob() para listar todos los archivos en la carpeta
archivos = carpeta.glob('*')

# Imprime la lista de archivos
for archivo in archivos:
    if archivo.is_file():
        print(archivo)
