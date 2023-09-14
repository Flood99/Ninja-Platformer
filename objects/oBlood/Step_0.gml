/// @description Insert description here
// You can write your code in this editor


x_vel += grav


var _friction_applied = sign(x_vel) * frictionForce;
	
	x_vel -= _friction_applied * global.time




if(place_meeting(x+x_vel,y,oPlatform))
{
	while !place_meeting(x+sign(x_vel),y,oPlatform)
	{
		x+=sign(x_vel)
	}	
x_vel = 0

}else

{
x+= x_vel * global.time
}


//same as above for vertical
YVelocity()

