--Find the last element of a list.

import Control.Exception

myLast [] = error "List cannot be empty"
myLast [x] = x
myLast (x:xs) = myLast xs



main :: IO () 
main = do print $ assert (myLast [1,2,3] == 3) "assert (myLast [1,2,3] == 3) OK" 
          print $ myLast [1,2,3]
          print $ myLast [1]
          print $ myLast ([]::[Int])
