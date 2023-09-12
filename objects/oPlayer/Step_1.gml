/// @description Insert description here
// You can write your code in this editor
var _jump = keyboard_check_pressed(ord("W"))||keyboard_check_pressed(vk_space) 

var _jumpDir	

//check if above ground or moving downwards against wall
if(check_collision(0,1)) 
{
	state = STATE.GROUNDED
	y_vel = 0

}
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
	
	x_vel -= _friction_applied
	
	
}

if(state = STATE.GROUNDED && _jump)
{
	y_vel = -jumpForce
	
}
if(state != STATE.GROUNDED && _jump)
{
	//walljump by adding jumpforce to y vel and maxing out horizontal speed
	if(check_collision(-1,0))
	{
		_jumpDir = 1
		y_vel = -jumpForce
		x_vel = _jumpDir * wallJumpSpd
		state = STATE.FALLING
	}
	
	
	if(check_collision(1,0))
	{
		_jumpDir = -1
		y_vel = -jumpForce
		x_vel = _jumpDir * wallJumpSpd
		state = STATE.FALLING
	}
		
	
}





//acceleration and max speed
x_vel += hInput * spd;

y_vel = clamp(y_vel,-maxYSpd,maxYSpd)

//states
if(state = STATE.FALLING)
{
y_vel += grav 
}
if(state = STATE.CLING)
{
y_vel = wallslideSpd
}
