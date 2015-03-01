fromMaybe defval wrapped = case wrapped
                           of Nothing -> defval
                              Just val -> val
