/// @description Insert description here
// You can write your code in this editorif 
if (follow != noone)
{
xto = follow.x
yto = follow.y
}

x += (xto-x)/10
y += (yto -y)/10

y = clamp(y,200,400)

camera_set_view_pos(view_camera[0],x-(cameraWidth/2),y-(cameraHeight*0.5))