%dw 2.0
output application/json
---
{
	"sfdc_account_id" : payload.items.id[0],
	"ms_last_run" : (now()) as DateTime as Number {unit:"milliseconds"} as String
}