%dw 2.0
output application/json
---
"Select Id from Contact where Email = '" ++ vars.id.email as String ++ "'"