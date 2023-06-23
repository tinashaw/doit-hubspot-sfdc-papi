%dw 2.0
output application/json
---
payload default [] ++ ((vars.recentmodifiedCompanies.results filter ((item, index) -> item.properties.hs_lastmodifieddate.value as Number > vars.minTimeCompany as Number)).companyId default [])