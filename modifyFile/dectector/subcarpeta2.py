from pathlib import Path

# Ruta de la carpeta raíz que deseas explorar
carpeta_raiz = Path(r'C:\Users\carlo\Documents\dev\myAppDB')

# Función recursiva para listar archivos en todas las subcarpetas
def listar_archivos_en_carpeta(carpeta):
    archivos = []
    for ruta in carpeta.rglob('*'):
        if ruta.is_file():
            archivos.append(ruta)
    return archivos

# Llama a la función para listar todos los archivos
archivos = listar_archivos_en_carpeta(carpeta_raiz)

# Imprime la lista de archivos
for archivo in archivos:
    print(archivo)
