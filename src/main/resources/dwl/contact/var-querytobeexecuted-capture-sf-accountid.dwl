%dw 2.0
output application/json
---
"Select Id from Account where Company_Domain__c = '" ++ vars.domain as String ++ "'" 