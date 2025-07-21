--Find the K'th element of a list.
import Control.Exception

elementAt :: [a] -> Int -> Maybe a
elementAt [] _ = Nothing
elementAt (x:xs) k = if k ==1 then Just x else elementAt xs (k - 1)

main = do
  print $ assert (elementAt [1,2,3] 2 == Just 2) "assert (elementAt [1,2,3] 2) OK"
  print $ assert (elementAt [1,2,3] 1 == Just 1) "assert (elementAt [1,2,3] 1 == Just 1) OK"
  print $ assert (elementAt "Haskell" 5 == Just 'e') "assert (elementAt \"Haskell\" 5 == Just 'e') OK"