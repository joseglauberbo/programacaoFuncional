--Escreva a declaracao para o tipo Triple, contendo tres elementos, todos de tipos diferentes.
--Escreva funcoes tripleFst, tripleSnd, tripleThr para extrair respectivamente o primeiro, segundo e terceiro
-- elementos de uma triple.
data Triple a b c = Triple a b c deriving (Eq,Show)

tripleFst:: (Triple a b c) -> a
tripleFst (Triple a b c) = a

tripleSnd:: (Triple a b c) -> b
tripleSnd (Triple a b c) = b

tripleThr:: (Triple a b c) -> c
tripleThr (Triple a b c) = c

--Escreva um tipo Quadruple que contem 4 elementos: dois de um mesmo tipo e outros dois de outro tipo
--Escreva as funcoes frstTwo e secondTwo que retornam os dois primeiros e os dois ultimos, respectivamente
data Quadruple a b = Quadruple a a b b deriving (Eq, Show)

firstTwo:: (Quadruple a b) -> [a]
firstTwo (Quadruple x y w z)= [x,y]

secondTwo:: (Quadruple a b) -> [b]
secondTwo (Quadruple x y w z)= [w,z]

--Escreva um tipo de dados que pode conter um, dois, tres ou quatro elementos, dependendo do construtor
--Implemente funções tuple1 até tuple4 que que retornam Just <valor> ou Nothing se o valor nao existe
data Tuple a b c d = Tuple1 a | Tuple2 a b | Tuple3 a b c | Tuple4 a b c d deriving (Eq, Show)

tuple1:: (Tuple a b c d) -> Maybe a
tuple1 (Tuple1 x) = Just x
tuple1 (Tuple2 x w) = Just x
tuple1 (Tuple3 x w y) = Just x
tuple1 (Tuple4 x w y z) = Just x

tuple2:: (Tuple a b c d) -> Maybe b
tuple2 (Tuple2 x w) = Just w
tuple2 (Tuple3 x w y) = Just w
tuple2 (Tuple4 x w y z) = Just w
tuple2 _ = Nothing

tuple3:: (Tuple a b c d) -> Maybe c
tuple3 (Tuple3 x w y) = Just y
tuple3 (Tuple4 x w y z) = Just y
tuple3 _ = Nothing

tuple4:: (Tuple a b c d) -> Maybe d
tuple4 (Tuple4 x w y z) = Just z
tuple4 _ = Nothing

--Escreva funções que retornem o tamanho, a cabeça, o tail.
--Faça o somatorio a esquerda de um valor inicial, uma função e uma lista.
--Faça o somatorio a direita de um valor inicial, uma função e uma lista.
data List a = Nil | Cons a (List a) deriving (Eq,Show)

listLength:: (List a) -> Integer
listLength Nil = 0
listLength (Cons x xs) = 1 + listLength xs

listHead:: (List a) -> a
listHead Nil = error "Empty list"
listHead (Cons x xs) = x

listTail:: (List a) -> (List a)
listTail Nil = Nil
listTail (Cons x xs) = xs

listFoldr f v Nil = v
listFoldr f v (Cons x xs) = f x (listFoldr f v xs)

listFoldl f v Nil = v
listFoldl f v (Cons x xs) = listFoldl f (f v x) xs 

--Escreva as funcoes sobre a estrutura de dados binary tree
data BinaryTree a = NIL | Node a (BinaryTree a) (BinaryTree a)
 deriving (Eq,Show)

sizeBST NIL = 0
sizeBST (Node a left right) = 1 + sizeBST left + sizeBST right

--verifica se uma BT é uma BST
isBST = undefined

--insere uma nova chave na BST retornando a BST modificada
insert = undefined

--retorna o Node da BST contendo o dado procurado ou entao NIL
search = undefined

--retorna o elmento maximo da BST
maximum = undefined

--retorna o elemento minimo da BST
minimum = undefined

--retorna o predecessor de um elemento da BST, caso o elemento esteja na BST
predecessor = undefined

--retorna o sucessor de um elemento da BST, caso o elemento esteja na BST
successor = undefined

--remove ume lemento da BST
remove = undefined

--retorna uma lista com os dados da BST nos diversos tipos de caminhamento
preOrder = undefined
order = undefined
postOrder = undefined