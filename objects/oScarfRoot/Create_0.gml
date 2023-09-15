/// @description Insert description here
// You can write your code in this editor

maxDist  = 8
xto = oPlayer.x 
yto = oPlayer.y
scarfPartCount = 17



for (i = 0; i < scarfPartCount; i++)
{
	var num = i
	var part = instance_create_layer(x,y,"Scarf",oScarfPart)
	with (part)
	{
		number = num
		show_debug_message("part created")
	}
}