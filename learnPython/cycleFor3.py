# Definir el rango (por ejemplo, de 1 a 10)
rango = range(1, 11) # abarca el 11 sin llegar a el

# Inicializar el contador
contador =0

# Recorrer el rango y aumentar el contador en cada iteración
for indice, valor in enumerate(rango):
    contador += 1
    print(f"Valor en la posición {indice} es {valor}")
    

# Imprimir el valor del contador
print("El contador es:", contador)
