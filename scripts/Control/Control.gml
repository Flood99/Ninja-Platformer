// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DisablePlayerMovement(){
	oPlayer.move = false
	

}
function DisablePlayerHook(){
	oPlayer.hook = false
	

}
function EnablePlayerMovement(){
	oPlayer.move = true
	

}
function EnablePlayerHook(){
	oPlayer.hook = true
	

}

function TriggerGate(_trigger)
{
	for( i = 0; i < instance_number(oGate); i++;)
	
	{
		with(instance_find(oGate,i))
		{
			if trigger = _trigger
			{
				triggered = true
				
			
			}
		
		
		}
	
	}
	


}