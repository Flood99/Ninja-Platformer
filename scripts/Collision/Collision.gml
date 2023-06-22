// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_collision(_move_x, _move_y) 
{
	
	if (place_meeting(x + _move_x, y + _move_y, oPlatform))
	{
		// If there was an object collision, return true, and end the function
		return true;
	}
}