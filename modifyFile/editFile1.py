import os
import shutil

# For create a file -->
with open('mi_archivo.txt', 'w') as archivo:
    archivo.write("Hola, mundo!")

# For read a file -->
with open('mi_archivo.txt', 'r') as archivo:
    contenido = archivo.read()
print(contenido)

# For Write a file -->
with open('mi_archivo.txt', 'a') as archivo:
    archivo.write("\nEsta es una nueva línea.")

# For rename or move a file --> os.rename() shutil.move()
os.rename('mi_archivo.txt', 'nuevo_nombre.txt')

# For reanem or move a file --> os.rename() shutil.move()
os.remove('nuevo_nombre.txt')

# For copy file
shutil.copy('archivo_original.txt', 'copia_del_archivo.txt')

# For "if it really exists"
if os.path.exists('mi_archivo.txt'):
    print("El archivo existe.")
else:
    print("El archivo no existe.")
