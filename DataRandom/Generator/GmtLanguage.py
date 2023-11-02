# INSERT INTO public.gmtlanguage(
# 	id, name, iso6391, iso6392)
# 	VALUES (?, ?, ?, ?);

# Format to present

from operator import length_hint
import random
import string

NUM_RECORDS = 100  # Número de registros que deseas generar
sql_queries = []  # Lista para almacenar las consultas SQL
len_sql_queries = length_hint(sql_queries)  # cantidad de querys almacenadas

# Generador de datos ramdon // ----- // ----- // ----- // ----- // ----- //
def generate_random_country_data():
    name = ''.join(random.choices(string.ascii_uppercase + string.ascii_lowercase, k=10))
    iso6391 = ''.join(random.choices(string.ascii_uppercase, k=2))
    iso6392 = ''.join(random.choices(string.ascii_uppercase, k=3))

    return name, iso6391, iso6392

# Constructor de querys // ----- // ----- // ----- // ----- // ----- //
for _ in range(NUM_RECORDS):
    name, iso6391, iso6392 = generate_random_country_data()
    query = f"('{name}', '{iso6391}', '{iso6392}')"

    sql_queries.append(query)  # Agregar query_object al array_almacenador

# Escribe los queries en el archivo de texto // ----- // ----- // ----- // ----- // ----- //
file_name = "myListQueries.sql"  # Nombre del archivo de texto
edit_method = "w"  # Metodo aplicado

# Metodo para imprimir query-list en el file.txt // ----- // ----- // ----- // ----- // ----- //
with open(file_name, edit_method) as file:
    file.write(f"INSERT INTO gmtlanguage (name, iso6391, iso6392) VALUES\n")
    # ciclo para agregar [ , & ; ] al final del query
    for indice, valor in enumerate (sql_queries):
        if (indice+1) != length_hint(sql_queries):
            file.write(valor +","+"\n")
        elif (indice+1) == length_hint(sql_queries):
            file.write(valor +";"+"\n")

# // ----- // ----- // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
# print(f"query creados con exito en '{file_name}'.")
# print(f"Tamaño del arreglo '{len_sql_queries}'.")
