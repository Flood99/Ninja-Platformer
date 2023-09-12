/// @description Insert description here
// You can write your code in this edito

if(point_distance(x,y,oPlayer.x,oPlayer.y)>500)
{
	returning = true
	if(oPlayer.kunaiConnected) instance_destroy()
}
if(returning)
{
direction = point_direction(x,y,oPlayer.x,oPlayer.y)
}

if(global.hitstop > 0 )
{
	global.time = 0
	global.hitstop -= 1
}
else{
	
	global.time = 1	
}

