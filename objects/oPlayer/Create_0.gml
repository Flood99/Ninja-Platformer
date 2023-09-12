/// @description Insert description here
// You can write your code in this editor
global.time = 1

rotation = 0
kunaiCooldown = room_speed
kunaiTimer = kunaiCooldown
kunaiSpd = 30
kunaiOut = false
kunaiConnected = false
wallJumpSpd = 5
frictionForce = 0.9
grounded = true
grav = 1
x_vel = 0
y_vel = 0
jumpForce = 20
spd = 0.5
maxXSpd = 15
maxYSpd = 30
wallslideSpd = 3
enum STATE
{
	CLING,
	FALLING,
	GROUNDED,
}
state = STATE.GROUNDED


//debug tool setup
yy = ref_create(self,"y_vel")
xx = ref_create(self,"x_vel")
dbg_state = ref_create(self,"state")
dbg_view("Helper",true)
dbg_section("Speed")
dbg_text("x_speed")
dbg_same_line()
dbg_text(xx)
dbg_text("y_speed")
dbg_same_line()
dbg_text(yy)
dbg_section("State")
dbg_text(dbg_state)