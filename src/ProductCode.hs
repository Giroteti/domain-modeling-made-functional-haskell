module ProductCode (ProductCode, createWidgetCode, createGizmoCode, value) where
 

import Data.Char (isDigit)

data ProductCode = 
  WidgetCode String
  | GizmoCode String

createWidgetCode :: String -> Either String ProductCode
createWidgetCode s@('W':a:b:c:d:rest)
  | all isDigit [a,b,c,d]  && null rest = Right (WidgetCode s)
createWidgetCode _ = Left "L'identifiant de Widget n'est pas valide"

createGizmoCode :: String -> Either String ProductCode
createGizmoCode s@('G':a:b:c:d:rest)
  | all isDigit [a,b,c,d]  && null rest = Right (WidgetCode s)
createGizmoCode _ = Left "L'identifiant de Gizmo n'est pas valide"

value :: ProductCode -> String
value (WidgetCode s) = s
value (GizmoCode s) = s