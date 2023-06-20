%dw 2.0
output application/json
---
payload
//(payload -- (payload filter ((item, index) -> ((item.properties.hs_lastmodifieddate.value  default 0) as Number == item.properties.ms_last_run.timestamp) and  (item.properties.ms_last_run.timestamp - (item.properties.ms_last_run.value default 0 as Number) < 30000)))) default []