%dw 2.0
output application/json
---
{
	"sfdc_lead_id" : payload.items.id[0],
	"sfdc_account_id" : vars.accountId
}