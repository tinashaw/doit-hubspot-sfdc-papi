%dw 2.0
output application/json
---
(((payload filter ((item, index) -> sizeOf(item."form-submissions") > 0 )) map ((item, index) -> 
if(max(item."form-submissions".timestamp) >= vars.lastSubmissionTime){
(item)
}  else{}  
)) filter ((item, index) -> !isEmpty(item) )) default []