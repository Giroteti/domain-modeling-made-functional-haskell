module OrderId (OrderId, value) where

newtype OrderId = OrderId Int

value :: OrderId -> Int
value (OrderId i) = i