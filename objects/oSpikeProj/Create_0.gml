/// @description Insert description here
// You can write your code in this editor


animation = undefined
image_angle = 90*dir
direction = image_angle +90
delay = 10
spd = 10
show_debug_message(image_angle)
switch(dir)
{
	case 1:
	animation = TweenFire(self,EaseOutElastic,TWEEN_MODE_ONCE,false,0,30,"x",x,x-8)
	show_debug_message("1")
	break;
	case 2:
	animation = TweenFire(self,EaseOutElastic,TWEEN_MODE_ONCE,false,0,30,"y",y,y+8)
	show_debug_message("2")
	break;
	case 3:
	animation = TweenFire(self,EaseOutElastic,TWEEN_MODE_ONCE,false,0,30,"x",x,x+8)
	show_debug_message("3")
	break;
	case 4:
	animation = TweenFire(self,EaseOutElastic,TWEEN_MODE_ONCE,false,0,30,"y",y,y-8)
	show_debug_message("4")
	break;
}


function Fire()
{
	alarm[0]  = 1
}
TweenAddCallback(animation,TWEEN_EV_FINISH,self,Fire)
show_debug_message(dir)