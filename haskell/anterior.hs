--Definir la funci�n anterior tal que anterior x es el anterior del n�mero natural x. Por ejemplo 2 es anterior de 3

ant_1::(Integer,Integer)->Bool
ant_1(a, b)=
	if a == b then
		True
	else
		False