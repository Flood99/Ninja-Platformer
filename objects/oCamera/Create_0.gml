/// @description Insert description here
// You can write your code in this editor
follow = oPlayer
ymin = 200
yMax = 400
cameraWidth = global.cameraWidth
cameraHeight = global.cameraHeight
maxHeight = global.maxHeight
minHeight = global.minHeight
shake = false
magnitude = 5
time = 30
timer = time
fade = 0.01

xto = x
yto = y
/*
function Shake(magnitude)
{
	if(shake = true)
	{
		var _xrand = irandom_range(-magnitude,magnitude)
		var _yrand = irandom_range(-magnitude,magnitude)
		
		camera_set_view_pos(view_camera[0],x-(cameraWidth/2)+_xrand,y-(cameraHeight*0.5)+_yrand)
		timer -=1
		if (timer <=0)
		{
			shake = false
			timer = time
		
		} 
	}
	
	
	
}