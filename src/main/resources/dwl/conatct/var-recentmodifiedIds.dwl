%dw 2.0
output application/json
---
(vars.recentmodifiedContacts.contacts filter ((item, index) -> item.addedAt as Number > vars.minTime as Number)).vid