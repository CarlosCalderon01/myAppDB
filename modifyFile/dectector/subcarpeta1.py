import os

# Ruta de la carpeta raíz que deseas explorar
carpeta_raiz = r'C:\Users\carlo\Documents\dev\myAppDB'

# Función recursiva para listar archivos en todas las subcarpetas
def listar_archivos_en_carpeta(carpeta):
    archivos = []
    for ruta, carpetas, archivos_en_carpeta in os.walk(carpeta):
        for archivo in archivos_en_carpeta:
            archivos.append(os.path.join(ruta, archivo))
    return archivos

# Llama a la función para listar todos los archivos
archivos = listar_archivos_en_carpeta(carpeta_raiz)

# Imprime la lista de archivos
for archivo in archivos:
    print(archivo)
