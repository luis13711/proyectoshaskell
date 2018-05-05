
invertir::(Integer,Integer)->Integer
invertir(Num,Inv)=
	if Num>0 then
		0+invertir(Num/10,Inv*10+(mod Num 1))
	else
		Num
