import System.Environment (getArgs)

printFirstWord function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
           [input, output] -> printFirstWord function input output
           _ -> putStrLn "error: exactly two argument needed."

        myFunction = foobar 


foobar lines = unlines (collectWords (splitLines lines))

collectWords [] = []
collectWords (ln : lns) = (firstWord ln) : collectWords lns

firstWord [] = []  
firstWord line = head (words line)

splitLines [] = []
splitLines cs =
  let (pre, suf) = break isLineTerminator cs
  in pre : case suf of
            ('\r' : '\n' : rest) -> splitLines rest
            ('\r' : rest) -> splitLines rest
            ('\n' : rest) -> splitLines rest
            _ -> []

isLineTerminator c = c == '\r' || c == '\n'
