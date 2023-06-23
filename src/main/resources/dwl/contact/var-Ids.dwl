%dw 2.0
output application/json
---
{
	"vid": payload.vid,
	"ownerId": payload.properties.hubspot_owner_id.value,
	"associatedcompanyid": payload.properties.associatedcompanyid.value,
	"email": payload.properties.email.value,
	"emailDomain": payload.properties.hs_email_domain.value default "",
//	"emailDomain": "zuvio.com"
}