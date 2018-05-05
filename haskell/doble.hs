--Definir la función doble tal que doble x es el doble de x. Por ejemplo,
--doble 3 ; 6
doble_1 :: (Double,Double) -> Bool
doble_1(a,b)=
	if a== b/2 then 
		True
	else
		False