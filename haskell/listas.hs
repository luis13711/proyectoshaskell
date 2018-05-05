-- Listas en Haskell
--Una lista es una estructura de datos que representa un conjunto de datos de un mismo tipo, es muy usada e importante en el lenguaje haskell.

--Su declaración es muy simple, ejem:
--[Int]: Representa una lista de enteros [4,5,9,25,60 ]

--[Char]: Representa una lista de chars ['l','i','n','u','x']

--[Bool]: Representa una lista de valores booleanos [True, False, True]

--[String]: Representa una lista de strings ["buenas","noches"]

--[Float]: Representa una lista de flotantes [2.5,5.8,4.3,7.1 ]

-- lista vacia [] 

--Ejemplos:

--Redefinir la función sum tal que sum l es la suma de los elementos de l. Por
--n_sum [1,3,6]  10
n_sum_1 :: Num a => [a] -> a
n_sum_1 [] = 0
n_sum_1 (x:xs) = x + n_sum_1 xs

--0.-longitud de lista
len :: [Integer] -> Integer
len [] = []
len (x:xs) = 1 + len xs

--1.- Sumar los elementos ed una  lista.
sumar::[Integer]->Integer
sumar [ ] = 0
sumar (x:xs) = x + sumar(xs)

--Main> sumar [5,4,7,8]
--24
--2.- Invertir una lista. El operador Ord me sirve para indicar que representa a cualquier tipo de dato.
inv:: [Ord] -> [Ord]
inv [] = []
inv(x:xs)= invertir(xs)++[x].
--invertir::Ord a=>[a]->[a]
--invertir [ ] = [ ]
--invertir (x:xs) = (invertir xs)++[x]
--Main> invertir [5,4,7,8]
--[8,7,4,5]

--3.- Comparar si 2 listas son iguales:
igualLista:: Eq a => [a]->[a]->Bool
igualLista l1 l2 = l1 == l2
--Main> igualLista ["Hola","Mundo"] ["Mundo","Hola"]
--False

--4.- Comprobar si una lista esta ordenada: En este caso ‘y’ representa al 2do elemento de la lista.
lista_ordenada::Ord a=>[a]->Bool
lista_ordenada [] = True
lista_ordenada [_] = True
lista_ordenada (x:y:xs) = (x<=y) && lista_ordenada (y:xs)
--Main> lista_ordenada ['a','b','c','d']
--True

--5.- Mostrar el elemento que se encuentra en cierta ubicacion:Como en un array el 1er elemento esta en la ubicacion 0.
mostrar_ubicacion::Ord a=>[a]->Int->a
mostrar_ubicacion l n = l!!n
--Main> mostrar_ubicacion [15,25,26,28] 2
--26

--6.- Mayor elemento de una lista:

mayor::[Integer]->Integer
mayor (x:xs)
| x > mayor(xs) = x
| otherwise = mayor(xs)

--Main> mayor [78,24,56,93,21,237,46,74,125]
--237

--Listas por comprensión: Le decimos a haskell que queremos una lista de elementos x, tales que x este en el rango de 1 a 12.

--Main> [x | x <- [1 .. 12]]
--[1,2,3,4,5,6,7,8,9,10,11,12]

--1.- Contar cuantos elementos pares hay en una lista. Estamos diciendo que x pertenece a la lista y ademas debe cumplir la condición de ser par. Como en varios lenguajes el length cuenta los elementos.

contarpares::[Integer]->Integer
contarpares []=0
contarpares lista= length [x | x <- lista, mod x 2 ==0]

--Main> contarpares [5,4,7,8]
--2

--2.- Devolver los cuadrados de una lista:

cuadrados::[Integer]->[Integer]
cuadrados [ ] = [ ]
cuadrados l = [x*x| x <- l]

--Main> cuadrados [1..10]
--[1,4,9,16,25,36,49,64,81,100]

--3.- Devolver una lista de  numeros primos de 1 a n: Para ello debemos crear nuestra funcion para saber si un numero es primo o no y despues la aplicamos a la lista por comprensión:

divisible::Integer->Integer->Bool
divisible x y = (mod x y) ==0

divisibles::Integer->[Integer]
divisibles x = [y | y <-[1..x],divisible x y]

esPrimo::Integer->Bool
esPrimo n = length (divisibles n) <=2

primos::Integer->[Integer]
primos n = [x | x <-[1..n],esPrimo x]

--Main> primos 100
--[1,2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
