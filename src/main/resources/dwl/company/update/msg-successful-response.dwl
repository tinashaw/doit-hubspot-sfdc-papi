%dw 2.0
output application/json
---
{
	"sfdc_account_id" : payload.items.id[0]
}