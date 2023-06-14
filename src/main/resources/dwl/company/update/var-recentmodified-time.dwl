%dw 2.0
output application/json
---
max([max(vars.recentmodifiedCompanies.results.properties.hs_lastmodifieddate.value), vars.recentmodifiedTime default 0]) default ""