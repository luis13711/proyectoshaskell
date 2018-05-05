--programa de ecuaciones de segundo grado

--raices_1 :: Double -> Double -> Double -> [Double]
--raices_1 a b c = [(-b-sqrt(b*b-4*a*c))/(2*a)] 
--raices_1(a,b,c) = (-b+sqrt(b*b-4*a*c))/(2*a)

--raices_1 :: (Double,Double,Double) -> [Double]
--raices_1(a,b,c)= [ (-b+sqrt(b*b-4*a*c))/(2*a),
--(-b-sqrt(b*b-4*a*c))/(2*a) ]

--raices_2 :: Double -> Double -> Double -> [Double]
--raices_2 a b c =
--[(-b+d)/n, (-b-d)/n]
--where d = sqrt(b*b-4*a*c)
--n = 2*a

raices_2 :: (Double,Double,Double) -> [Double]
raices_2 (a,b,c)=
[(-b+d)/n, (-b-d)/n]
where d = sqrt(b*b-4*a*c)
n = 2*a