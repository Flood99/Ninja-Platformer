/// @description Insert description here
// You can write your code in this editor


//amount of pixels we move
if(place_meeting(x+x_vel,y,oPlatform))
{
	while !place_meeting(x+sign(x_vel),y,oPlatform)
	{
		x+=sign(x_vel)
	}	
x_vel = 0

}else

{
x+= x_vel
}



if(place_meeting(x,y+y_vel,oPlatform))
{
	while !place_meeting(x,y+sign(y_vel),oPlatform)
	{
		y+=sign(y_vel)
	}	
y_vel = 0

}else

{
y+= y_vel
}