/// @description Insert description here
// You can write your code in this editor
var _jump = keyboard_check_pressed(ord("W"))||keyboard_check_pressed(vk_space) 

var _jumpDir	






//check if above ground 
if(check_collision(0,1)) 
{
	state = STATE.GROUNDED
	y_vel = 0
	
	if (x_vel >= maxXSpd)  CreateSmoke(1,90,160,-15,15)
	if (x_vel <= -maxXSpd)  CreateSmoke(1,0,80,15,15)
	
	

}
//or moving downwards against wall
else if(sign(y_vel) == 1 && check_collision(1,0))
{
	//cling if moving down against wall
	state = STATE.CLING
}
else if(sign(y_vel) == 1 && check_collision(-1,0))
{
	//cling if moving down against wall
	state = STATE.CLING
}
else
{
	state = STATE.FALLING
}


//get input
hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

//apply basic friction when not pressing buttons
if(hInput = 0 || abs(x_vel) > maxXSpd)
{
	var _friction_applied = sign(x_vel) * frictionForce;
	
	x_vel -= _friction_applied * global.time
	
	
}

if(state = STATE.GROUNDED && _jump)
{
	y_vel = -jumpForce * global.time
	audio_play_sound(jump,1,false)
	CreateSmoke(5,0,180,0,8)
	
	
}
if(state != STATE.GROUNDED && _jump)
{
	//walljump by adding jumpforce to y vel and maxing out horizontal speed
	if(check_collision(-1,0))
	{
		_jumpDir = 1
		y_vel = -jumpForce * global.time
		x_vel = _jumpDir * wallJumpSpd * global.time
		state = STATE.FALLING
		audio_play_sound(jump,1,false)
		
	}
	
	
	if(check_collision(1,0))
	{
		_jumpDir = -1
		y_vel = -jumpForce * global.time
		x_vel = _jumpDir * wallJumpSpd * global.time
		state = STATE.FALLING
		audio_play_sound(jump,1,false)
	}
		
	
}





//acceleration and max speed
x_vel += hInput * spd * global.time;
//decrease jump height when space in released
if keyboard_check_released(vk_space) && y_vel<0
{

y_vel*=.6

}

y_vel = clamp(y_vel,-maxYSpd,maxYSpd)

//states
if(state = STATE.FALLING)
{
	y_vel += grav * global.time
}
if(state = STATE.CLING)
{
	y_vel = wallslideSpd * global.time
	if(check_collision(-1,0)) CreateSmoke(2,45,90,-15,0)
	if(check_collision(1,0)) CreateSmoke(2,90,135,15,0)
}

