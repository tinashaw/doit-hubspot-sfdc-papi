%dw 2.0
output application/json
var picklist = readUrl("classpath://picklist.json", "application/json")
---
[{
	"MailingStreet" : payload.properties.address.value,
	"MailingCity" : payload.properties.city.value,
	("LeadSource" : picklist.contact.LeadSource[(payload.properties.contact_source.value)])if(payload.properties.contact_source.value != null),
	("Hubspot_Contact_Type__c" : picklist.contact.Hubspot_Contact_Type__c[(payload.properties.contact_type.value)])if(payload.properties.contact_type.value != null),
	"Hubspot_Country__c" : payload.properties.country.value,
	("Do_Not_Call__c": payload.properties.do_not_call__c.value as Boolean)if(payload.properties.do_not_call__c.value != null),//checkbox
	("DoiT_Parent_Sales_Region__c" : picklist.contact.DoiT_Parent_Sales_Region__c[(payload.properties.doit_sales_region.value)])if(payload.properties.doit_sales_region.value != null),
	"Fax" : payload.properties.fax.value,
	 ("Hot_Lead__c": payload.properties.hot_lead.value as Boolean )if(payload.properties.hot_lead.value != null),//checkbox
	("Buying_Role__c": picklist.contact.Buying_Role__c[(payload.properties.hs_buying_role.value)])if(payload.properties.hs_buying_role.value !=null),
	"HasOptedOutOfEmail": if(payload.properties.no_more.value != null) true else false,
	("Hubspot_Lead_Status__c" : picklist.contact.Hubspot_Lead_Status__c[(payload.properties.hs_lead_status.value)])if(payload.properties.hs_lead_status.value != null),
	"Persona__c" :payload.properties.hs_persona.value,
	("OwnerId": vars.hubspot_owner_id)if(vars.hubspot_owner_id != null),
	"Lead_Score__c" : payload.properties.hubspotscore.value,
	("Lead_Source_Detail__c" : picklist.contact.contact_source_detail[(payload.properties.contact_source_detail.value)])if(payload.properties.contact_source_detail.value != null),
	("MQL_Achievement_Reason__c" : picklist.contact.mql_achievement_reason__c[(payload.properties.mql_achievement_reason__c.value)])if(payload.properties.mql_achievement_reason__c.value != null),
	("NPS_Opt_In__c" : picklist.contact.nps_opt_in__c[(payload.properties.nps_opt_in__c.value)])if(payload.properties.nps_opt_in__c.value != null),
	"SalesLoft1__Most_Recent_Cadence_Name__c" : payload.properties.sfdc_most_recent_cadence_name.value,
	("Event_Date__c" : payload.properties.event_date.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.event_date.value != null),
	"Event_Name__c" : payload.properties.event_name.value,
	"Hubspot_State_Region__c" : payload.properties.state.value,
	("Marketing_Contact__c" : picklist.contact.marketing_contact__c[(payload.properties.marketing_contact__c.value)])if(payload.properties.marketing_contact__c.value != null),
	("Became_a_Customer_Date__c": payload.properties.became_a_customer_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_customer_date__c.value != null),//datetime
	("Became_a_Lead_Date__c": payload.properties.became_a_lead_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_lead_date__c.value != null), //datetime
	("Became_a_Marketing_Qualified_Lead_Date__c": payload.properties.became_a_marketing_qualified_lead_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_marketing_qualified_lead_date__c.value != null), //datetime
	("Became_a_Sales_Accepted_Lead_SAL__c": payload.properties.became_a_sales_accepted_lead_sal__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_sales_accepted_lead_sal__c.value != null), //datetime
	("Became_a_Sales_Qualified_Lead_Date__c": payload.properties.became_a_sales_qualified_lead_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_sales_qualified_lead_date__c.value != null), //datetime
	("Became_a_Subscriber_Date__c": payload.properties.became_a_subscriber_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_subscriber_date__c.value != null), //datetime
	("Became_a_Tele_Accepted_Lead_TAL__c": payload.properties.became_a_tele_accepted_lead_tal__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_tele_accepted_lead_tal__c.value != null),   //datetime
	("Became_an_Evangelist_Date__c": payload.properties.became_an_evangelist_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_an_evangelist_date__c.value != null), //datetime
	("Became_an_Opportunity_Date__c": payload.properties.became_an_opportunity_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_an_opportunity_date__c.value != null), //datetime
	("Date_Lead_Became_Accepted__c": payload.properties.date_lead_became_accepted__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.date_lead_became_accepted__c.value != null),//datetime
	("Date_Lead_Became_In_Progress__c": payload.properties.date_lead_became_in_progress__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.date_lead_became_in_progress__c.value != null), //datetime
	("Do_Not_Contact__c": payload.properties.do_not_contact__c.value as Boolean)if(payload.properties.do_not_contact__c.value != null), //checkbox
	"Email": payload.properties.email.value,
	("Email_Opt_Out_Date__c": payload.properties.email_opt_out_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.email_opt_out_date__c.value != null),
	"Email_Opt_Out_Reason__c": payload.properties.email_opt_out_reason__c.value,
	"FirstName" : payload.properties.firstname.value,
	("Marketing_Contact_Status__c" : picklist.contact.hs_marketable_status[(payload.properties.hs_marketable_status.value)])if(payload.properties.hs_marketable_status.value != null),
	"Hubspot_Contact_ID__c" : (vars.id.vid default vars.vid) as String,
	"Title" : payload.properties.jobtitle.value,
	"LastName" : payload.properties.lastname.value,
	("Lifecycle_Stage__c" : picklist.contact.lifecycle_stage__c[(payload.properties.lifecycle_stage__c.value)])if(payload.properties.lifecycle_stage__c.value != null),
	"Description" : payload.properties.note_body.value,
	("AccountID": vars.accountId)if(vars.accountId != null),
	"Salutation" : payload.properties.salutation.value,
	("Date_Became_a_Hot_Lead__c" : payload.properties.sfdc_became_a_hot_lead.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.sfdc_became_a_hot_lead.value != null), //dateTime
	("Became_a_Warm_Lead__c" : payload.properties.sfdc_became_a_warm_lead.value as Number as DateTime {unit : "milliseconds"} as Date) if(payload.properties.sfdc_became_a_warm_lead.value != null), // date,
	"of_Marketing_Emails_Clicked__c" : payload.properties.hs_email_click.value,
	"of_Marketing_Emails_Opened__c" : payload.properties.hs_email_open.value,
	("First_Click__c" : payload.properties.hs_email_first_click_date.value  as Number as DateTime {unit : "milliseconds"})if(payload.properties.hs_email_first_click_date.value != null), //datetime,
	("First_Opened__c" : payload.properties.hs_email_first_open_date.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.hs_email_first_open_date.value != null),
	"Id": payload.properties.sfdc_contact_id.value default vars.contactId,
	"Hubspot_Company_ID__c" : payload.properties.associatedcompanyid.value
}]