import Text.Printf
import Control.Applicative
import Control.Monad
import Data.Array.MArray
import Data.Array.IO
import Data.Char
import System.IO
import Data.IORef

main :: IO ()
recette0 n ordre desordre =
  {- Inserez votre code ici -}
  return ()

main =
  do n <- (fmap read getLine)
     ordre <- (join (newListArray . (,) 0 . subtract 1 <$> return n <*> fmap (map read . words) getLine))
     desordre <- (join (newListArray . (,) 0 . subtract 1 <$> return n <*> fmap (map read . words) getLine))
     recette0 n ordre desordre
     return ()


