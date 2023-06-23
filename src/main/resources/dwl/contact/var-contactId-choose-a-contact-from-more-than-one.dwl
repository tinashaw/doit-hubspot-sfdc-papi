%dw 2.0
output application/json
---
if(isEmpty(vars.contactId filter ($.Lifecycle_Stage__c ~= "Customer"))) (vars.contactId orderBy($.LastModifiedDate))[-1].Id else ((vars.contactId filter ($.Lifecycle_Stage__c ~= "Customer")) orderBy($.LastModifiedDate))[-1].Id