--0.-longitud de lista
len :: [Integer] -> Integer
len [] = 0
len (x:xs) = 1 + len xs

--1.- Sumar los elementos ed una  lista.

sumar::[Integer]->Integer
sumar [ ] = 0
sumar (x:xs) = x + sumar(xs)
--Main> sumar [5,4,7,8]
--24
--2.- Invertir una lista. El operador Ord me sirve para indicar que representa a cualquier tipo de dato.
--inv:: [Ord] -> [Ord]
--inv [] = []
--inv(x:xs)= invertir(xs)++[x].
invertir::Ord a=>[a]->[a]
invertir [ ] = [ ]
invertir (x:xs) = (invertir xs)++[x]
--Main> invertir [5,4,7,8]
--[8,7,4,5]