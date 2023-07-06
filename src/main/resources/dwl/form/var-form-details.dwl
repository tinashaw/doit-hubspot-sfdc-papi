%dw 2.0
output application/json
var time = vars.lastSubmissionTime
---
payload."form-submissions" filter ((item, index) ->  item.timestamp >= time) map{
    "id" : $."form-id" ,
    "title" : $.title ,
    "timestamp" : $.timestamp
}