{-# LANGUAGE BlockArguments #-}
module BlockArguments where

foo = when (x > 0) do
  print x
  exitFailure

bar = withForeignPtr fptr \ptr -> c_memcpy buf ptr size

baz arg1 arg2 arg3 arg4 = initialValue
  &   someFunction arg1 arg2
  >>= traverse \(x, y) -> do
        a <- f x
        b <- g y
        h a b
  >>= anotherFunction arg3 arg4
