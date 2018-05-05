--programa Casi igual
--Definir el operador ~= tal que x ~= y se verifica si |x-y| < 0,0001. Por ejemplo,
--3.00001 ~= 3.00002 ; True
--3.1 ~= 3.2 ; False
--Solución:
infix 4 ~=
(~=) :: Float -> Float -> Bool
x ~= y = abs(x-y) < 0.0001