%dw 2.0
output application/json
---
"SELECT Id FROM Account WHERE Company_Domain__c = '" ++ vars.id.emailDomain as String ++ "' AND RecordTypeId = '" ++ p('salesforce.freemaildomain.record-typeid') as String ++ "'"