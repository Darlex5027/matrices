# Define el tamaño de las matrices
n <-5 

# Crea las matrices A y B con números enteros aleatorios entre 0 y 9
# En R, para números enteros aleatorios, usamos sample.int()
A <- matrix(sample.int(10, size = n * n, replace = TRUE) - 1, nrow = n, ncol = n)
B <- matrix(sample.int(10, size = n * n, replace = TRUE) - 1, nrow = n, ncol = n)

# Mide el tiempo de inicio
start_time <- Sys.time()

# Realiza la multiplicación de matrices usando el operador %*% en R
C <- A %*% B

# Mide el tiempo de finalización
end_time <- Sys.time()

# Calcula el tiempo de ejecución
execution_time <- as.numeric(difftime(end_time, start_time, units = "secs"))

# Imprime el tiempo de ejecución y lo guarda en un archivo
nombre_archivo <- "tiempo_ejecucion_enR.txt"

# Abre el archivo en modo escritura ('w').
# writeLines() es útil para escribir líneas de texto en un archivo.
file_connection <- file(nombre_archivo, "w")
mensaje <- sprintf("Tiempo de ejecución en R para la multiplicación de matrices de %dx%d: %.4f segundos\n", n, n, execution_time)
writeLines(mensaje, file_connection)
close(file_connection)

# (Opcional) Imprimir una pequeña porción de la matriz resultante C para verificar
# print("Primeros 5x5 elementos de la matriz resultante C:")
# print(C[1:5, 1:5])
