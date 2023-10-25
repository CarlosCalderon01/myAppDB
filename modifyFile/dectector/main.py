from pathlib import Path
# FileNotFoundError
# ruta_archivo.close()

# Define la ruta del archivo
ruta_archivo = Path('mi_archivos.txt')

# Lee el contenido del archivo usando el método read_text()
try:
    contenido = ruta_archivo.read_text()
except FileNotFoundError:
    print(print("archivo no enocntrado!"))
# finally:
    

# Imprime el contenido del archivo
# print(contenido)

def findFileDocument():
    
    