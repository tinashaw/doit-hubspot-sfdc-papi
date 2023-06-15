%dw 2.0
output application/json skipNullOn="everywhere"
var picklist = readUrl("classpath://picklist.json", "application/json")
---
[{
		("City" : payload.properties.city.value) if(payload.properties.city.value !=null) ,
		("Hubspot_Country__c" : payload.properties.country.value) if(payload.properties.country.value !=null) ,
		("Custom_Created_By__c" : payload.properties.custom_created_by.value)if(payload.properties.custom_created_by.value !=null) ,
		("MQL_Achievement_Reason__c" : picklist.contact.MQL_Achievement_Reason__c[(payload.properties.mql_achievement_reason.value)]) if(payload.properties.mql_achievement_reason.value !=null) ,
		("Phone" : payload.properties.phone.value) if(payload.properties.phone.value !=null) ,
		("Hubspot_State_Region__c" : payload.properties.state.value) if(payload.properties.state.value !=null) ,
		("Website" : payload.properties.website.value) if(payload.properties.website.value !=null) ,
		("Became_a_Lead_Date__c" : payload.properties.became_a_lead_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_lead_date__c.value != null),
		("Became_a_Marketing_Qualified_Lead_Date__c" : payload.properties.became_a_marketing_qualified_lead_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_marketing_qualified_lead_date__c.value != null),
		("Became_a_Sales_Accepted_Lead_SAL__c" : payload.properties.became_a_sales_accepted_lead_sal__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_sales_accepted_lead_sal__c.value != null),
		("Became_a_Sales_Qualified_Lead_Date__c" : payload.properties.became_a_sales_qualified_lead_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_sales_qualified_lead_date__c.value != null),
		("Became_a_Tele_Accepted_Lead_TAL__c" : payload.properties.became_a_tele_accepted_lead_tal__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_a_tele_accepted_lead_tal__c.value != null),
		("Became_an_Other_Lifecycle_Date__c" : payload.properties.became_an_other_lifecycle_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_an_other_lifecycle_date__c.value != null),
		("Email_Opt_Out_Date__c" : payload.properties.became_an_unsubscribed_user_date.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_an_unsubscribed_user_date.value != null),
		("Became_Other_Lifecycle_Date__c" : payload.properties.became_other_date.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.became_other_date.value != null),
		("LeadSource" : payload.properties.contact_source.value) if(payload.properties.contact_source.value !=null) ,
		("Lead_Source_Detail__c" : payload.properties.contact_source_detail.value ) if(payload.properties.contact_source_detail.value !=null),
		("Hubspot_Contact_Type__c" : payload.properties.contact_type.value) if(payload.properties.contact_type.value !=null) ,
		("Date_Lead_Became_Accepted__c" : payload.properties.date_lead_became_accepted__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.date_lead_became_accepted__c.value != null),
		("Date_Lead_Became_In_Progress__c" : payload.properties.date_lead_became_in_progress__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.date_lead_became_in_progress__c.value != null),
		("Date_Lead_Became_Rejected__c" : payload.properties.date_lead_became_rejected__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.date_lead_became_rejected__c.value != null),
		("Do_Not_Call__c" : payload.properties.do_not_call__c.value as Boolean)if(payload.properties.do_not_call__c.value != null),//checkbox,
		("Do_Not_Contact__c" : payload.properties.do_not_contact__c.value as Boolean)if(payload.properties.do_not_contact__c.value != null), //checkbox,
		"DoiT_Parent_Sales_Region__c" : payload.properties.doit_parent_sales_region__c.value ,
		"Email" : payload.properties.email.value ,
//		("Email_Opt_Out_Date__c" : payload.properties.email_opt_out_date__c.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.email_opt_out_date__c.value != null),
		"Email_Opt_Out_Reason__c" : payload.properties.email_opt_out_reason__c.value ,
		("Event_Date__c" : payload.properties.event_date.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.event_date.value != null),
		"Event_Name__c" : payload.properties.event_name.value ,
		"FirstName" : payload.properties.firstname.value ,
		("Hot_Lead__c" : payload.properties.hot_lead.value as Boolean)if(payload.properties.hot_lead.value != null),//checkbox,
		 ("Buying_Role__c": picklist.contact.hs_buying_role[(payload.properties.hs_buying_role.value)] )if(payload.properties.hs_buying_role.value != null),
		("hasoptedoutofemail" : payload.properties.hs_email_optout.value as Boolean)if(payload.properties.hs_email_optout.value != null),
		"Hubspot_Lead_Status__c" : payload.properties.hs_lead_status.value ,
		"Marketing_Contact_Status__c" : payload.properties.hs_marketable_status.value ,
		"Persona__c" : payload.properties.hs_persona.value ,
	//	"Hubspot_Contact_ID__c" : vars.id.vid as String,
		("OwnerId": vars.hubspot_owner_id)if(vars.hubspot_owner_id != null),
		"Industry_Text__c" : payload.properties.industry.value ,
		"Title" : payload.properties.jobtitle.value ,
		"LastName" : payload.properties.lastname.value ,
		"Lead_Score__c" : payload.properties.hubspotscore.value ,
		"Lead_Score_Band__c" : payload.properties.lead_score_band.value ,
		"Status" : payload.properties.leadstatus.value ,
		"Lifecycle_Stage__c" : payload.properties.SFDC_lifecycle_stage__c.value ,
		"Marketing_Contact__c" : payload.properties.marketing_contact__c.value ,
		("Minimum_Required_Information__c" : if(payload.properties.sfdc_became_a_hot_lead.value == 'true') 'Yes' else 'No') if(payload.properties.minimum_required_information.value != null),
		"Description" : payload.properties.note_body.value ,
		("NumberOfEmployees" : payload.properties.numberofemployees.value as Number)if(payload.properties.numberofemployees.value != null),
		"of_BOFU_Submissions__c" : payload.properties.of_bofu_submissions.value ,
		"Salutation" : payload.properties.salutation.value ,
		("Date_Became_a_Hot_Lead__c" : payload.properties.sfdc_became_a_hot_lead.value as Number as DateTime {unit : "milliseconds"})if(payload.properties.sfdc_became_a_hot_lead.value != null),
		"Became_a_Warm_Lead__c" : payload.properties.sfdc_became_a_warm_lead.value ,
		"Status" : payload.properties.sfdc_lead_status__c.value ,
		"Unqualified_Reason__c" : payload.properties.unqualified_reason__c.value ,
		"PostalCode" : payload.properties.zip.value ,
		"of_Marketing_Emails_Clicked__c" : payload.properties.hs_email_click.value ,
		"of_Marketing_Emails_Opened__c" : payload.properties.hs_email_open.value ,
		("First_Click__c" : payload.properties.hs_email_first_click_date.value  as Number as DateTime {unit : "milliseconds"})if(payload.properties.hs_email_first_click_date.value != null), //datetime,
		"First_Opened__c" : payload.properties.hs_email_first_open_date.value ,
		("Account__c": vars.accountId)if(vars.accountId != null or vars.accountId != "" ),
		"Hubspot_Company_ID__c" : payload.properties.associatedcompanyid.value,
		"Id" : payload.properties.sfdc_lead_id.value 
	}]