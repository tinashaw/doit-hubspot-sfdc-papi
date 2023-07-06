%dw 2.0
output application/json skipNullOn="everywhere"
---
//vars.formSubmittedContact map ((item, index) -> 
//{
//	
//	Subject : item."form-submissions".title[0] ,
//	Type : p('form.Type'),
//	ActivityDate : (item."form-submissions".timestamp[0] as Number as DateTime {unit : "milliseconds"}) as Date ,
//	RecordTypeId : p('form.RecordTypeId') ,      //"01276000000CrWY",
//	OwnerId : p('form.AssignedTo'),
//	Status : p('form.Status'),
//	WhatId : if( item.properties.sfdc_contact_id.value != null) item.properties.sfdc_account_id.value else null ,
//	WhoId : if( item.properties.sfdc_contact_id.value != null) item.properties.sfdc_contact_id.value else item.properties.sfdc_lead_id.value
//	
//	})

	{
	Subject : payload.title ,
	Type : p('form.Type'),
	ActivityDate : (payload.timestamp as Number as DateTime {unit : "milliseconds"}) as Date ,
	RecordTypeId : p('form.RecordTypeId') ,      //"01276000000CrWY",
	OwnerId : p('form.AssignedTo'),
	Status : p('form.Status'),
	Description : vars.message,
	WhatId : if( vars.currentContact.properties.sfdc_contact_id.value != null) vars.currentContact.properties.sfdc_account_id.value else null ,
	WhoId : if( vars.currentContact.properties.sfdc_contact_id.value != null) vars.currentContact.properties.sfdc_contact_id.value else vars.currentContact.properties.sfdc_lead_id.value
	
	}
