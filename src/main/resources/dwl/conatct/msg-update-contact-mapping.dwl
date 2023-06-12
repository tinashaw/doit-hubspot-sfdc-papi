%dw 2.0
output application/json skipNullOn="everywhere"
var picklist = readUrl("classpath://picklist.json", "application/json")
---
[{
	"MailingStreet" : payload.properties.address.value,
	"MailingCity" : payload.properties.city.value,
	"LeadSource" : payload.properties.contact_source.value,
	"Hubspot_Contact_Type__c" : payload.properties.contact_type.value,
	"Hubspot_Country__c" : payload.properties.country.value,
	("Do_Not_Call__c": payload.properties.do_not_call__c.value as Boolean)if( !isBlank(payload.properties.do_not_call__c.value) ),//checkbox
	"DoiT_Parent_Sales_Region__c" : payload.properties.doit_sales_region.value,
	"Fax" : payload.properties.fax.value,
	("Hot_Lead__c": payload.properties.hot_lead.value as Boolean )if(payload.properties.hot_lead.value != ""),//checkbox
    ("Buying_Role__c": picklist.contact.hs_buying_role[(payload.properties.hs_buying_role.value)])if(payload.properties.hs_buying_role.value != null),
	"HasOptedOutOfEmail": if(payload.properties.no_more.value != null) "true" else "false",
    "Hubspot_Lead_Status__c" : payload.properties.hs_lead_status.value,
	"Persona__c" : payload.properties.hs_persona.value,
	("OwnerId": vars.hubspot_owner_id)if(vars.hubspot_owner_id != null),
	"Lead_Score__c" : payload.properties.hubspotscore.value,
	"Lead_Source_Detail__c" : payload.properties.contact_source_detail.value,
	"MQL_Achievement_Reason__c" : payload.properties.mql_achievement_reason__c.value,
	"NPS_Opt_In__c" : payload.properties.nps_opt_in__c.value,
	"SalesLoft1__Most_Recent_Cadence_Name__c" : payload.properties.sfdc_most_recent_cadence_name.value,
	("Event_Date__c" : payload.properties.event_date.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.event_date.value != null),
	"Event_Name__c" : payload.properties.event_name.value,
	"Hubspot_State_Region__c" : payload.properties.stateregion.value,
	"Marketing_Contact__c" : payload.properties.marketing_contact__c.value,
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
	"Marketing_Contact_Status__c" : payload.properties.hs_marketable_status.value,
	"Hubspot_Contact_ID__c" : payload.vid as String,
	"Title" : payload.properties.jobtitle.value,
	"LastName" : payload.properties.lastname.value,
	"Lifecycle_Stage__c" : payload.properties.lifecycle_stage__c.value,
	"Description" : payload.properties.note_body.value,
	("AccountID": payload.properties.sfdc_account_id.value)if(payload.properties.sfdc_account_id.value != null),
	"Salutation" : payload.properties.salutation.value,
	("Date_Became_a_Hot_Lead__c" : payload.properties.sfdc_became_a_hot_lead.value as Number as DateTime {unit : "milliseconds"} )if(payload.properties.sfdc_became_a_hot_lead.value != null), //dateTime
	("Became_a_Warm_Lead__c" : payload.properties.sfdc_became_a_warm_lead.value as Number as DateTime {unit : "milliseconds"} as Date) if(payload.properties.sfdc_became_a_warm_lead.value != null), // date,
	"of_Marketing_Emails_Clicked__c" : payload.properties.hs_email_click.value,
	"of_Marketing_Emails_Opened__c" : payload.properties.hs_email_open.value,
	("First_Click__c" : payload.properties.hs_email_first_click_date.value  as Number as DateTime {unit : "milliseconds"})if(payload.properties.hs_email_first_click_date.value != null), //datetime,
	"First_Opened__c" : payload.properties.hs_email_first_open_date.value,
	"Id": payload.properties.sfdc_contact_id.value default vars.contactId
}]