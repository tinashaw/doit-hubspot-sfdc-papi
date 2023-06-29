%dw 2.0
output application/json
//var maxTime = max(vars.formSubmissions.results.submittedAt )
var maxTime = vars.form.timestamp
---
((vars.formSubmissions.results filter ((item, index) -> item.submittedAt == maxTime )).values[0] filter ((item, index) -> item.name == "message")).value[0]