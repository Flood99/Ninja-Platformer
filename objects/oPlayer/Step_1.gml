/// @description Insert description here
// You can write your code in this editor


	var _jumpDir	


if(check_collision(0,1)) 
{
	state = STATE.GROUNDED
	y_vel = 0

}
else if(sign(y_vel) == 1 && check_collision(1,0))
{

		//Get direction to jump off of wall
	 _jumpDir = -1
	state = STATE.CLING
}
else if(sign(y_vel) == 1 && check_collision(-1,0))
{
	 _jumpDir = 1
	state = STATE.CLING
}
else
{
	state = STATE.FALLING
}



hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));


if(hInput = 0)
{
	var _friction_applied = sign(x_vel) * frictionForce;
	
	x_vel -= _friction_applied
	
	
}

if(state = STATE.GROUNDED && keyboard_check_pressed(ord("W")))
{
	y_vel = -jumpForce
	
}
if(state = STATE.CLING && keyboard_check_pressed(ord("W")))
{
	
	y_vel = -jumpForce
	x_vel = _jumpDir * maxSpd
	state = STATE.FALLING
}






x_vel += hInput * spd;
x_vel = clamp(x_vel,-maxSpd,maxSpd)


if(state = STATE.FALLING)
{
y_vel += grav 
}
if(state = STATE.CLING)
{
y_vel = wallslideSpd
}
