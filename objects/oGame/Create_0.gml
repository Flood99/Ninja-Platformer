/// @description Insert description here
// You can write your code in this editor
global.won = false

hook = false
global.partSystem = part_system_create_layer("Particles",true)

global.partSmoke = part_type_create()
part_type_sprite(global.partSmoke,sSmoke,false,false,false)
part_type_size(global.partSmoke,0.5,0.01,0,0)
part_type_direction(global.partSmoke,0,180,0,1)
part_type_speed(global.partSmoke,0.5,1,-0.01,0)
part_type_life(global.partSmoke,40,50)
part_type_alpha2(global.partSmoke,1,0)

global.partSmoke2 = part_type_create()
part_type_sprite(global.partSmoke2,sSmoke,false,false,false)
part_type_size(global.partSmoke2,1,2,0,0)
part_type_direction(global.partSmoke2,40,140,0,1)
part_type_speed(global.partSmoke2,1,3,-0.015,0)
part_type_life(global.partSmoke2,200,180)
part_type_alpha2(global.partSmoke2,1,0)


global.StartPoint = noone


global.cameraWidth = 1366
global.cameraHeight = 768
global.maxHeight = 400
global.minHeight = 200