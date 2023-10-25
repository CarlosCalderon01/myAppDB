from operator import length_hint

data = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo']
epale = length_hint(data) # tamaño --> arreglo = 7
# // ----- // ----- // ----- // Intento 1 // ----- // ----- // ----- //
# For Example 1
# for indice, valor in enumerate(data):
#     print(f'imprimo indice: {indice} El valor es: {valor}')

# // ----- // ----- // ----- // Intento 2 // ----- // ----- // ----- //

# Definir el rango (por ejemplo, de 1 a 10)
rango = range(1, 11) # abarca el 11 sin llegar a el
contador =0 # Inicializar el contador
# Recorrer el rango y aumentar el contador en cada iteración

for indice, valor in enumerate(rango):
    contador += 1
    print(f"Valor en la posición {indice} es {valor}")

print("El contador es:", contador)

# // ----- // ----- // ----- // Intento 3 // ----- // ----- // ----- //

# Definir el rango (por ejemplo, de 1 a 10)
rango = range(1, 11) # abarca el 11 sin llegar a el

contador =0 # Inicializar el contador

# Recorrer el rango y aumentar el contador en cada iteración
for indice, valor in enumerate(rango):
    contador += 1
    print(f"Valor en la posición {indice} es {valor}")
    

# Imprimir el valor del contador
print("El contador es:", contador)