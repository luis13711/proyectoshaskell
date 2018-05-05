--Redefinir la función signum tal que signum x es -1 si x es negativo, 0 si x es cero, 1 si x es positivo

sig_1::Integer->Integer
sig_1(x)=
	if x>0 then
		1
	else if x==0 then
		0
	else
		-1
