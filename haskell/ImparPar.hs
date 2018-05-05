--Solución: Presentamos distintas definiciones:
--1. Usando la predefinida odd
impar1 :: Integer -> Bool
impar1 = odd
--2. Usando las predefinidas not y even:
--impar2 :: Integer -> Bool
--impar2 x = not (even x)

--3. Usando las predefinidas not, even y (.):
--impar3 :: Integer -> Bool
--impar3 = not . even

--4. Por recursión:
--impar4 :: Integer -> Bool
--impar4 x   x > 0     = impar4_aux x
--           otherwise = impar4_aux (-x)
--        where impar4_aux 0 = False
--			impar4_aux 1 = True
--			impar4_aux (n+2) = impar4_aux n