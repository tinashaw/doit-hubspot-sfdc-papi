%dw 2.0
output application/json skipNullOn="everywhere"
var picklist = readUrl("classpath://picklist.json", "application/json")
---
[{
	"AnnualRevenue" : payload.properties.annualrevenue.value ,
	"Azure_Revenue__c" : payload.properties.azure_revenue.value ,
	"AWS_Revenue__c" : payload.properties.cmp_aws_revenue.value ,
	("AWS_Services__c": picklist.company.AWS_Services__c[(payload.properties.cmp_aws_services.value)])if(payload.properties.cmp_aws_services.value != null),
	("G_Suite__c": picklist.company.G_Suite__c[(payload.properties.cmp_g_suite.value)])if(payload.properties.cmp_g_suite.value != null),
	"GCP_Revenue__c" : payload.properties.cmp_gcp_revenue.value ,
	("Google_Cloud__c": picklist.company.Google_Cloud__c[(payload.properties.cmp_google_cloud.value)])if(payload.properties.cmp_google_cloud.value != null),
	"CMP_Link_Company__c" : payload.properties.cmp_link___company.value ,
	("Microsoft_Azure__c": picklist.company.Microsoft_Azure__c[(payload.properties.cmp_microsoft_azure.value)])if(payload.properties.cmp_microsoft_azure.value != null),
	("Office_365__c": picklist.company.Office_365__c[(payload.properties.cmp_office_365.value)])if(payload.properties.cmp_office_365.value != null),
	("Consolidation_Date__c" : payload.properties.consolidation_date.value as Number as DateTime {unit : "milliseconds"}) if(payload.properties.consolidation_date.value != null) ,
	"Hubspot_Country__c" : payload.properties.country.value ,
	"DoiT_Parent_Sales_Region__c" : payload.properties.doit_parent_sales_region__c.value ,
	"Company_Domain__c" : payload.properties.domain.value ,
	("Flexsave_GCP_Marketplace__c": picklist.company.Flexsave_GCP_Marketplace__c[(payload.properties.flexsave_gcp_marketplace.value)])if(payload.properties.flexsave_gcp_marketplace.value != null),
	"OwnerId" : vars.ownerId ,
	"Hubspot_State_Region__c" : payload.properties.hubspot_state_region__c.value ,
	"Industry_Text__c" : payload.properties.industry.value ,
	"Lifecycle_Stage__c" : payload.properties.lifecycle_stage__c.value ,
	("Marketing_Rights__c": picklist.company.Marketing_Rights__c[(payload.properties.marketing_right.value)])if(payload.properties.marketing_right.value != null),
	"Name" : payload.properties.name.value ,
	"NumberOfEmployees" : payload.properties.numberofemployees.value ,
	"O365_Revenue__c" : payload.properties.o365_revenue.value ,
	"Phone" : payload.properties.phone.value ,
	("Became_a_Former_Customer__c" : payload.properties.sfdc_became_a_former_customer.value as Number as DateTime {unit : "milliseconds"}) if(payload.properties.sfdc_became_a_former_customer.value != null) ,
	"Segment__c" : payload.properties.sfdc_segment.value ,
	"Sub_Region__c" : payload.properties.sfdc_sub_region.value ,
	"Sub_Industry__c" : payload.properties.sub_industry__c.value ,
	"Type" : payload.properties.'type'.value ,
	"Website" : payload.properties.website.value ,
	"Hubspot_Company_ID__c" : payload.companyId as String
}]
	 