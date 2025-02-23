```haskell
import Data.List

main :: IO ()
main = do
  let emptyList = []
  let nonEmptyList = [1,2,3]

  -- Solution 1: Check for emptiness
  let safeHead1 = if null emptyList then 0 else head emptyList
  let safeHead2 = if null nonEmptyList then 0 else head nonEmptyList
  print safeHead1 -- prints 0
  print safeHead2 -- prints 1

  -- Solution 2: Using maybe
  let safeHead3 = maybe 0 head emptyList
  let safeHead4 = maybe 0 head nonEmptyList
  print safeHead3 -- prints 0
  print safeHead4 -- prints 1
```