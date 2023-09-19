/// @description Insert description here
// You can write your code in this editor
if(oPlayer.dead = false)
{
	var dir = point_direction(x,y,oPlayer.x,oPlayer.y)
	var dir2 = point_direction(x,y,oPlayer.x,oPlayer.y)
	var dis = point_distance(oPlayer.x,oPlayer.y,x,y)



 
	xto = oPlayer.x 
	yto = oPlayer.y - 3





	x += (x-xto)/2 * global.time
	y += (y-yto)/2 * global.time

	var dis = point_distance(oPlayer.x,oPlayer.y,x,y)
	var dir = point_direction(xto,yto,x,y)	

	if (dis > maxDist)
	{
		x = xto + lengthdir_x(maxDist,dir);
	    y = yto + lengthdir_y(maxDist,dir);
	}


	image_angle = dir
}

