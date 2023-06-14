%dw 2.0
output application/json
--- 
{
	"errorMessage":payload.items.message[0]
}