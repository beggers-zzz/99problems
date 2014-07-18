-- Ben Eggers <ben.eggers36@gmail.com>
-- Problems 21-28

module EvenMoreLists where

-- Problem 21
insertAt y [] 1 = [y]
insertAt y [] _ = error "That doesn't even make sense"
insertAt y (x:xs) n
    | (< 1) n = error "That doesn't even make sense"
    | (== 1) n = y:x:xs
    | otherwise = x:(insertAt y xs (n - 1))

-- Problem 22
range' bot top
    | bot > top = reverse (range' top bot)
    | bot == top = [top]
    | bot < top  = bot:range' (bot + 1) top

-- Problem 23


-- Problem 24


-- Problem 25


-- Problem 26
combinations :: Int -> [a] -> [[a]]
combinations _ [] = []
combinations n (x:xs) 
    | n < 1 = error "She doesn't even go here!"
    | n == 0 = []
    | otherwise = (map (x:) (combinations (n-1) xs)) ++ (combinations n xs)