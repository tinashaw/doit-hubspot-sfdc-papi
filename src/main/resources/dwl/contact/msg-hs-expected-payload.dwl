%dw 2.0
output application/json
---
{
  "properties": payload pluck ( 
    { 
        "property": $$,
        "value": $
    }
  )
}