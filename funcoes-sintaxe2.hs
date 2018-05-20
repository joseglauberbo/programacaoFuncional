
mapFilter f p xs = let result = map f xs = [f x| x <- xs] in filter p result = [x | x <- xs, p x]