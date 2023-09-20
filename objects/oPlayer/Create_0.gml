/// @description Insert description here
// You can write your code in this editor
x = global.StartPoint.x
y = global.StartPoint.y

dead = false
move = true
hook = true
global.time = 1
global.hitstop = 0
rotation = 0
kunaiCooldown = 30
kunaiTimer = kunaiCooldown
kunaiSpd = 30
kunaiOut = false
kunaiConnected = false

xScale = 1
yScale = 1
alpha = 1

xprev = 0
yprev = 0

frictionForce = 0.9
grounded = true
grav = 1
x_vel = 0
y_vel = 0
jumpForce = 20
spd = 0.5
maxXSpd = 15
maxYSpd = 30
wallslideSpd = 6
wallJumpSpd = 5



enum STATE
{
	CLING,
	FALLING,
	GROUNDED,
}
state = STATE.GROUNDED


//debug tool setup

//
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