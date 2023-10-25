import os

# Ruta de la carpeta que deseas explorar
carpeta = r'C:\Users\carlo\Documents\dev\myAppDB'

# Utiliza os.listdir() para listar todos los archivos en la carpeta
archivos = os.listdir(carpeta)

# Filtra solo los archivos (excluye directorios)
archivos = [archivo for archivo in archivos if os.path.isfile(os.path.join(carpeta, archivo))]

# Imprime la lista de archivos
for archivo in archivos:
    print(archivo)
