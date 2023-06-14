%dw 2.0
output application/java
var freemails = readUrl("classpath://freemail.json", "application/json")
---
freemails contains vars.id.emailDomain