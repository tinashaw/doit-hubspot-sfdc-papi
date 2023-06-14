%dw 2.0
output application/json
---
if(isEmpty(vars.accountId filter ($.Lifecycle_Stage__c ~= "Customer"))) (vars.accountId orderBy($.LastModifiedDate))[-1].Id else ((vars.accountId filter ($.Lifecycle_Stage__c ~= "Customer")) orderBy($.LastModifiedDate))[-1].Id