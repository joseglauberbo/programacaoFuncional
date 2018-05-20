
{-
- Determina se um numero eh primo ou nao. Preocupe-se apenas em resolver o problema.
- Nao precisa usar conhecimentos mais sofisticados da teoria dos numeros. Voce pode trabalhar com listas.
-}

isPrime:: Int -> Bool
isPrime x = 
	let lista = [g | g <- [1..x], x `mod` g == 0] 
	in 
		if length lista == 2 then True else False

