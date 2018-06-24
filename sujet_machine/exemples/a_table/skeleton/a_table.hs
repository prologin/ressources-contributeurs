import Text.Printf
import Control.Applicative
import Control.Monad
import Data.Array.MArray
import Data.Array.IO
import Data.Char
import System.IO
import Data.IORef
array_init :: Int -> ( Int -> IO out ) -> IO (IOArray Int out)
array_init len f = newListArray (0, len - 1) =<< g 0
  where g i =
           if i == len
           then return []
           else fmap (:) (f i) <*> g (i + 1)

main :: IO ()
a_table0 n m salle =
  {- Inserez votre code ici -}
  return ()

main =
  ( (fmap read . head . reads) <$> getLine :: IO (Int, Int)) >>= (\ (n, m) ->
                                                                   do bw <- array_init n (\ bx ->
                                                                                            (join (newListArray <$> (fmap (\x -> (0, x-1)) (return m)) <*> getLine)))
                                                                      a_table0 n m bw
                                                                      return ())


