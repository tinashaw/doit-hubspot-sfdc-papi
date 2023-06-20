%dw 2.0
output application/json
---
//payload default []
(payload -- (payload filter ((item, index) -> (((item.properties.lastmodifieddate.value default 0) as Number - (item.properties.ms_last_run.versions.timestamp[0] default 0)) < 3000) ))) default []