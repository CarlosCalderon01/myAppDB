from operator import length_hint

data = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo']
epale = length_hint(data) # tamaño --> arreglo

# indice --> posicon del array
# valor --> el contenido de la posicion del array
for indice, valor in enumerate(data):
    print(f'imprimo indice: {indice} El valor es: {valor}')
