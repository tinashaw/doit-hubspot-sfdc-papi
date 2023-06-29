%dw 2.0
output application/json
var maxTime = max(payload."form-submissions".timestamp )
---
{
    "id" : (payload."form-submissions" filter ((item, index) -> item .timestamp == maxTime))."form-id"[0] ,
    "title" : (payload."form-submissions" filter ((item, index) -> item .timestamp == maxTime))..title[0] ,
    "timestamp" : (payload."form-submissions" filter ((item, index) -> item .timestamp == maxTime)).timestamp[0]
}