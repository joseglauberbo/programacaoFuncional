{-
- Usando os predicados not,and e or prontos de Haskell, implemente os predicados (funcoes) xor (or exclusivo),
- impl (implicacao A => B é equivalente a (not A or B)) e equiv (A <=> B é definido como A => B and B => A)
- Procure usar casamento de padroes e reutilizar as funcoes.
-}


xor:: Bool -> Bool -> Bool 
xor a b | a && not b = True
		| not a && b = True
		| otherwise = False

impl:: Bool -> Bool -> Bool
impl a b = (not a) || b

equiv:: Bool -> Bool -> Bool
equiv a b = (impl a b) && (impl b a)

{-
A funcao square esta implementada e eleva ao quadrado um determinado numero
-}

square:: Int -> Int
square x = x*x

{-
- Implemente a funcao potencia, que retorna o resultado de x elevado a y 
-}

pow:: Int -> Int -> Int
pow x 0 = 1
pow x 1 = x
pow x y = x * pow x (y-1) 

{-
- Implemente a funcao fatorial que calcula o fatorial de um numero 
-}

fatorial:: Int -> Int
fatorial 0 = 1
fatorial 1 = 1
fatorial x = x * fatorial(x-1)
*/
{-
- Determina se um numero eh primo ou nao. Preocupe-se apenas em resolver o problema.
- Nao precisa usar conhecimentos mais sofisticados da teoria dos numeros. Voce pode trabalhar com listas.
-}

isPrime:: Int -> Bool
isPrime x = 
	let lista = [g | g <- [1..x], x `mod` g == 0] 
	in 
	if length lista == 2 then True else False

{-
- Calcula um termo da sequencia de Fibonnacci. Voce pode trabalhar com listas. 
-}
fib x = undefined

{-
- Calcula um MDC de dois numeros usando o algoritmo de Euclides. 
-}
mdc x y = undefined

{-
- Calcula um MMC de dois numeros. 
-}
mmc x y = undefined

{-
- Determina se dois numeros inteiros positivos sao co-primos. Dois numeros sao co-primos se 
- o mdc deles for igual a 1. Ex: coprimo 35 64 = True 
-}
coprimo x y = undefined

{-
- Calcula a conjectura de Goldbach, que diz que um numero par maior que 2 pode ser escrito como a soma de dois numeros primos. Ex: 28 = 5 + 23.
-}
goldbach x = undefined


