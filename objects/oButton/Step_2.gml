/// @description Insert description here
// You can write your code in this editor

if(check_collision_With(0,-1,oPlayer))
{
	if(!pushed)
	{
		
		TriggerGate(trigger)
		pushed = true
	}
	image_index = 1
	if held != true audio_play_sound(ButtonSound,3,false)
	held = true
}else
{
	held = false
	image_index = 2
}
