primes (p:ps) = p : primes [x | x <- ps, mod x p /= 0]
