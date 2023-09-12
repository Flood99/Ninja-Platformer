/// @description Insert description here
// You can write your code in this editor
global.partSystem = part_system_create_layer("Particles",true)

global.partSmoke = part_type_create()
part_type_sprite(global.partSmoke,sSmoke,false,false,false)
part_type_size(global.partSmoke,0.5,0.01,0,0)
part_type_direction(global.partSmoke,0,180,0,1)
part_type_speed(global.partSmoke,0.5,1,-0.01,0)
part_type_life(global.partSmoke,40,50)
part_type_alpha2(global.partSmoke,1,0)


