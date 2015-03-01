splitWith function xs = splitWithHelper function xs [] []

splitWithHelper function (x : xs) tmp tmpRes = let tmp' = tmp ++ x : []
                                                   tmpRes' = if null tmp
                                                             then tmpRes
                                                             else tmpRes ++ tmp : []
                                               in if function x
                                                  then splitWithHelper function xs tmp' tmpRes
                                                  else splitWithHelper function xs [] tmpRes'

splitWithHelper function [] tmp tmpRes = if null tmp
                                         then tmpRes
                                         else tmpRes ++ tmp : []
