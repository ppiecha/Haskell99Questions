--Find the last-but-one (or second-last) element of a list.

import Control.Exception (assert)

myButLast :: [a] -> Either String a
myButLast [] = Left "empty list" 
myButLast [_] = Left "not enough elements"
myButLast [x, _] = Right x
myButLast (x:xs) = myButLast xs

main = do print $ assert (myButLast [1,2,3] == Right 2) "assert (myButLast [1,2,3] == Right 2) OK"
          print $ assert (myButLast [1,3] == Right 1) "assert (myButLast [1,3] == Right 1) OK"
          print $ assert (myButLast ['a'..'z'] == Right 'y') "assert (myButLast ['a'..'z'] == Right 'y') OK"
          print $ assert (myButLast [1..9] == Right 8) "assert (myButLast [1..9] == Right 8) OK"
          print $ assert (myButLast [1] == Left "not enough elements") "assert (myButLast [1] == Left \"not enough elements\") OK"
          print $ assert (myButLast ([]::[Int]) == Left "empty list") "assert (myButLast ([]::[Int]) == Left \"empty list\" OK" 