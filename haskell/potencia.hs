-- prgrama de calculo de potencia
pow1 :: (Double,Integer)  -> Double
pow1 (x, n) = if n==0 then 1
else x * pow1 (x, (n - 1))