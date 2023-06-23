%dw 2.0
output application/json
---
payload default [] ++ ((vars.recentmodifiedContacts.contacts filter ((item, index) -> item.addedAt as Number > vars.minTime as Number)).vid default [])