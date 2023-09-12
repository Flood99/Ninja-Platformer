/// @description Insert description here
// You can write your code in this editor
var _mouseDir = point_direction(x,y,mouse_x,mouse_y)


//when kunai is connected to wall get total pixels on x and y axix 
//to the kunai postion, them use a multiplier and add to vel

if(mouse_check_button_pressed(mb_left) && kunaiConnected)
{
	var _kunaiDir = point_direction(x,y,oKunai.x,oKunai.y)
	var _kunaiDis = point_distance(x,y,oKunai.x,oKunai.y)
	
	x_vel += 0.1*lengthdir_x(_kunaiDis,_kunaiDir)
	y_vel += 0.1*lengthdir_y(_kunaiDis,_kunaiDir)
	
	instance_destroy(oKunai)
	kunaiOut = false
	kunaiConnected = false
	kunaiTimer = kunaiCooldown

}




//spawn kunai on click
if(mouse_check_button_pressed(mb_left) && kunaiOut = false && kunaiTimer <= 0)
{
	var kunai =	instance_create_layer(x,y,"Player",oKunai)
	with(kunai)
	{
		image_angle = _mouseDir
		direction = image_angle
		speed = other.kunaiSpd
		
	}
	kunaiOut = true
	
}





//if we move into a wall next frame move one pixel forward until unable
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


//same as above for vertical
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


kunaiTimer -=1



