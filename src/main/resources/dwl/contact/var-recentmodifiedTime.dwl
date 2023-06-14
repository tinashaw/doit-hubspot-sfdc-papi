%dw 2.0
output application/json
---
max([max(vars.recentmodifiedContacts.contacts.addedAt), vars.recentmodifiedTime default 0]) default ""