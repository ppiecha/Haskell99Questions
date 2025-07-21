--Find the number of elements in a list.
import Control.Exception

myLength :: [a] -> Int
myLength = foldr (\ x y -> y + 1) 0
--myLength = foldr (\ x -> (+) 1) 0
main = do
  print $ assert (myLength [] == 0) "assert (myLength [] == 0) OK"
  print $ assert (myLength [1,2,3] == 3) "assert (myLength [1,2,3] ==3) OK"