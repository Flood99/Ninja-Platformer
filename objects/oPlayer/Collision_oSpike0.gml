/// @description Insert description here
// You can write your code in this editor

if (!dead)
{
	dead = true
	alpha = 0
	DisablePlayerHook()
	DisablePlayerMovement()
	oCamera.follow = noone
	alarm[0] = 60
	CreateSmoke(40,0,359,0,0,global.partSmoke2)
	audio_play_sound(Death,1,false)
	oCamera.Shake = true

}
