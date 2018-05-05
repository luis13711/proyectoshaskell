--programa de factoriales

--1. Primera definición: Con condicionales:
fact1 :: Integer -> Integer
fact1 n = if n == 0 then 1
					else n * fact1 (n-1)
					
--2. Segunda definición: Mediante guardas:
--fact2 :: Integer -> Integer
--fact2 n
--      n == 0    = 1
--      otherwise = n * fact2 (n-1)
	  
--3. Tercera definición: Mediante patrones:
--fact3 :: Integer -> Integer
--fact3 0 = 1
--fact3 n = n * fact3 (n-1)

--4. Cuarta definición: Restricción del dominio mediante guardas
--fact4 :: Integer -> Integer
--fact4 n
--	  n == 0 = 1
--      n >= 1 = n * fact4 (n-1)

--5. Quinta definición: Restricción del dominio mediante patrones:
--fact5 :: Integer -> Integer
--fact5 0 = 1
--fact5 (n+1) = (n+1) * fact5 n

--6. Sexta definición: Mediante predefinidas
--fact6 :: Integer -> Integer
--fact6 n = product [1..n]

--7. Séptima definición: Mediante plegado:
--fact7 :: Integer -> Integer
--fact7 n = foldr (*) 1 [1..n]

--Factorial> [f 4 | f <- [fact1,fact2,fact3,fact4,fact5,fact6,fact7]]
--[24,24,24,24,24,24,24]