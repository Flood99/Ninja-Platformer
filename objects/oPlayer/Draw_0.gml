/// @description Insert description here
// You can write your code in this editor

_touchingWallLeft = check_collision(-1,0)
_touchingWallRight = check_collision(1,0)

if (state != STATE.GROUNDED && !_touchingWallRight && !_touchingWallLeft && global.hitstop <=0)
{
	rotation +=(x_vel+y_vel)/2
	
} else rotation = 0



draw_sprite_ext(spr_Player,1,x,y,xScale,yScale,rotation,c_white,alpha)


