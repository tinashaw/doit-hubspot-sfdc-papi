%dw 2.0
output application/json
---
"Select Id, Lifecycle_Stage__c, LastModifiedDate from Contact where Id IN ('" ++ (vars.contactId.Id joinBy  ("','") ) ++  "')"