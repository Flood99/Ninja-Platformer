// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OpenDoor(){
	animation = DoorOpening
	currentSequence = layer_sequence_create("Level",x,y,animation)
	image_alpha = 0
	doorOpen = true
	return currentSequence

}
function CheckAnimation(animation){
	done = false
	if layer_sequence_is_finished(animation) done = true
	return done
	
	
	
}
function SmokeBombWin()
{
	with(oPlayer){
		CreateSmoke(70,0,180,0,5,global.partSmoke2)
		audio_play_sound(SmokeBomb,1,false)
		alpha = 0
	}
}
function SmokeBombSpawn()
{
	with(global.StartPoint)
	{
		CreateSmoke(70,0,180,0,5,global.partSmoke2)
		audio_play_sound(SmokeBomb,1,false)
		oPlayer.alpha = 1
		oPlayer.x = x
		oPlayer.y = y
		EnablePlayerHook()
		EnablePlayerMovement()
		if oPlayer.dead = true oPlayer.dead = false
		oCamera.follow = oPlayer
	}
	
}