/// @description Insert description here
// You can write your code in this editor

if(doorOpen && point_in_circle(oPlayer.x,oPlayer.y,x,y,64) && oPlayer.dead = false)
{
	DisablePlayerMovement()
	DisablePlayerHook()
	show_debug_message("k")
	global.LevelEnd = true
	
}

if (!animationPlaying && global.LevelEnd && oPlayer.x_vel = 0)
{
	alarm[0] = 60
	alarm[1] = 180
	animationPlaying = true
}
