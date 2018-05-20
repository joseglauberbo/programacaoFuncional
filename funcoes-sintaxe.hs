{-
- Dada uma tupla, divide o primeiro pelo segundo usando pattern matching.
- Ela deve ser indefinida quando o denominador for zero.
-}

divTuple (x, 0) = undefined
divTuple (x, y) = x/y

{-
 - Calcula o somatorio entre dois numeros a e b (a < b). Procure usar alguma funcao pronta sobre listas. 
 - Ex: somatorio 0 1 = 1
 -     somatorio 1 3 = 6
-}

somatorio:: Integer -> Integer -> Integer
somatorio a b = let list = [x | x <- [a..b]] 
				in sum(list)

{-
 - Calcula o somatorio (recursivo) entre dois numeros a e b (a < b).
 - Ex: somatorio 0 1 = 1
 -     somatorio 1 3 = 6
-}
somatorioRec:: Integer -> Integer -> Integer
somatorioRec a b = if (a + 1) == b then a + b else a + somatorioRec (a+1) b

-- Defina a funcao que eleva um membro ao quadrado
square 0 = 0
square x = x * x 

-- Soma os quadrados de dois numeros.

sumSquares 0 0 = 0
sumSquares x y = square x + square y

--N SEI SE FUNCIONA PARA TODOS OS CASOS
-- Defina uma funcao de alta ordem que aceita uma função (Int -> Int) e aplica a funcao a dois numeros
higherOrderSum f a b = f (f a b)

-- Defina a soma dos auqdrados em termos de higherOrderSum
hoSumSquares a b = higherOrderSum sumSquares a b 

--CONSERTAR
--Implemente a funcao mapFilter que primeiro aplica o map de uma funcao f a uma lista e depois aplica a funcao filter
-- a lista resultante. Procure usar a composicao de funcoes
mapFilter f p xs = let result = map f xs = [f x| x <- xs] in filter p result = [x | x <- xs, p x]

