let rec loopc i n = 
	if i < n then
		loopc (i+1) n
	else ()

let rec loopb i n = 
	if i < n then
		(assert (1 <= i);
		loopb (i+1) n)
	else ()
	
let rec loopa k l n = 
	if k < n then
		(if (Random.bool ()) then
			loopb l n
		else ();
		loopc l n)
	else ()
	
let main l n = 
	if (l > 0) then
		let k = 1 in
		loopa k l n
	else ()
	
let _ = main 2 3
let _ = main (-2) (-3)	