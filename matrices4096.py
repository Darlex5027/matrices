import numpy as np
import time

# Define el tamaño de las matrices
n = 5 

# Crea las matrices A y B con números aleatorios entre 0 y 9
A = np.random.randint(0, 10, size=(n, n))
B = np.random.randint(0, 10, size=(n, n))

# Mide el tiempo de inicio
start_time = time.time()

# Realiza la multiplicación de matrices usando NumPy
C = np.dot(A, B)
# Alternativamente, puedes usar el operador @:
# C = A @ B

# Mide el tiempo de finalización
end_time = time.time()

# Calcula el tiempo de ejecución
execution_time = end_time - start_time

# Imprime el tiempo de ejecución
nombre_archivo = "tiempo_ejecucion_enPyton.txt"

# Abre el archivo en modo escritura ('w'). Si el archivo no existe, se crea.
# Si existe, su contenido se sobrescribe.
with open(nombre_archivo, 'w') as archivo:
    # Escribe el mensaje en el archivo
    mensaje = f"Tiempo de ejecución con NumPy para la multiplicación de matrices de {n}x{n}: {execution_time:.4f} segundos\n"
    archivo.write(mensaje)
# (Opcional) Imprimir una pequeña porción de la matriz resultante C para verificar
# print("Primeras 5x5 elementos de la matriz resultante C:")
# print(C[:5, :5])
