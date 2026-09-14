# Introducción a R 

# limpiar variables y objetos del ambiente
rm(list=ls())

# Operaciones elementales

# Suma
# Debe dar 15
10 + 5

# Resta
# Debe dar 5
10 - 5

# Multiplicación 
# Debe dar 50
10*5

# División
# Debe dar 2
10/5

# Raíz cuadrada
# Debe dar 2
sqrt(4)

# Potencia
# Debe dar 8
2^3

# Lo siguiente es asignar variables
# Esto es con el fin de guardar variables y no andar repitiendo el valor
# La asignamos como "<-"
# Ejemplos
x <- 5
# Ahora guarda el valor de 5 en la variable x
y <- 10
# Guarda el valor de 10 en la variable y
# Podemos hacer las mismas operaciones pero ahora con las variables

# Suma
# Podemos definir a otra variable para asignarle el valor de la suma
suma <- x + y 
# Podemos llamar a la variable suma para que nos devuelva el resultado, pues R 
# guarda el valor 
suma # Ejecutando esto, nos saldrá 15

# Es análogo con las demás operaciones

# Resta 
resta <- x - y
resta

# Multiplicación
 mult <- x*y
 mult

# División 
 div <- x/y
 div
 
 # Tipos de variable
 # Hay númericas, caracteres o lógicos (verdadero o falso)
 # Numerica
 edad <- 25
 # Caracter, los textos van entre comillas
 nombre <- "Ana"
 # Booleano: Valores TRUE o FALSE
 es_estudiante <- TRUE
 # Fechas
 # as.date es formato de fecha
 fecha <- as.Date("2025-08-18")
 
 # Para ver la clase de los objetos se usa la función class (Los devuelve en inglés)
 
 class(edad)
 # Devuelve numerico
 class(nombre)
 # Devuelve caracter
 class(es_estudiante)
 # Devuelve lógico
 class(fecha)
# Devuelve fecha

# Veamos qué es un vector
# Es una estructura que almacena varios valores del mismo tipo
 # Por ejemplo, puede almacenar las edades de 5 estudiantes
 # Contiene una sola dimensión
 # Podemos meter variables de cualquier tipo, pero no mezcladas
 # Es decir, numérica con númerica, categorica con categorica, etc
 # Esto para poder realizar operaciones con vectores
 # Ejemplos:
 
# Vector numérico
 # Para un vector usamos c()
 vect_num <- c(1, 5, 8, 9, 10)

 # Vector categorico
 vect_cat <- c("Luis", "Gera", "Jorge")

 # Vector de lógicos
vect_boo <- c(TRUE, FALSE)

# Con la función length podemos ver el tamaño de los vectores 
length(vect_num)
length(vect_cat)
length(vect_boo)

# Más operaciones con vectores
# Supongamos que tenemos las edades de 3 personas
edades <- c(20, 25, 30)

# Si sumamos 2, se le suma elemento a elemento
edades_en_dos_años <- edades + 2
edades_en_dos_años # Devuelve: 22, 27, 32

# Multiplicar vectores entre sí
pesos <- c(2, 1.5, 3)
# El producto se hará elemento por elemento
edades * pesos

# Generación de numeros aleatorios
# La función esencial o básica para generar números pseudoaleatorios es:
# runif(n) genera n números pseudoaleatorios entre 0 y 1
# runif(n, min, max) permite elegir el intervalo, eje: 5 - 10
runif(5)
runif(n = 10, min = 1, max = 5)
# Fijamos una semilla para reproducibilidad
# Para que siempre reproduzca los mismos resultados sin importar la
# computadora, e.g se fija la semilla 135
set.seed(123)
runif(3)
runif(6)

# También lo podemos guardar en una variable
set.seed(2026)
numeros <- runif(n = 5,
                 min = 0,
                 max = 1)
# Llamamos a la variable
numeros

# La función sample() selecciona elementos de un conjunto
# sample(x, size), donde x es el objeto o variable y size el tamaño

alumnos <- c("Ana", "Carlos", "Fernanda", "Luis", "Mariana")
sample(alumnos, 2)
# Con reemplazo
z <- sample(alumnos, 20, replace = TRUE)
table(z)

# Veamos cómo accedemos a elementos de vectores
# Para acceder a un elemento de un vector, usaremos los corchetes 
# objeto[n] donde [n] es la posición del elemento que buscamos
alumnos[2] # Devuelve "Carlos"

# También podemos acceder a varios elementos a la vez
# La sintaxis es similar a un vector (estamos elegiendo más de uno)
alumnos[c(1, 3)] # Devuelve "Ana" y "Fernanda"
