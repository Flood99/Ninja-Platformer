/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(x,y,target.x,target.y)
var dir2 = point_direction(x,y,target.x,target.y)
var dis = point_distance(target.x,target.y,x,y)



xto = target.x    
yto = target.y


//disCheck = point_distance(target.x,target.y, x + (xto-x)/2 , y + (yto-y)/2)


x += (xto-x)/2  * global.time
y += (yto-y)/2  * global.time

var dis = point_distance(target.x,target.y,x,y)
var dir = point_direction(xto,yto,x,y)	
if (dis > maxDist)
{
	x = xto + lengthdir_x(maxDist,dir);
    y = yto + lengthdir_y(maxDist,dir);
}
image_angle = dir
