--Definir la función anterior tal que anterior x es el anterior del número natural x. Por ejemplo 2 es anterior de 3

ant_1::(Integer,Integer)->Bool
ant_1(a,b+1)=
	if a == b then
		True
	else
		False