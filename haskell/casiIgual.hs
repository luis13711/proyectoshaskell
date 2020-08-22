infix 4 ~=
(~=) :: Float -> Float -> Bool
x ~= y = abs(x-y) < 0.0001