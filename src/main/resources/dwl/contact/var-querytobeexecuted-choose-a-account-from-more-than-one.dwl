%dw 2.0
output application/json
---
"Select Id, Lifecycle_Stage__c, LastModifiedDate from Account where Id IN ('" ++ (vars.accountId.Id joinBy  ("','") ) ++  "')"