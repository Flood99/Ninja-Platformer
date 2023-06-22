/// @description Insert description here
// You can write your code in this editor
frictionForce = 0.5
grounded = true
grav = 1
x_vel = 0
y_vel = 0
jumpForce = 20
spd = 0.5
maxSpd = 15
wallslideSpd = 3
enum STATE
{
	CLING,
	FALLING,
	GROUNDED,
}
state = STATE.GROUNDED
