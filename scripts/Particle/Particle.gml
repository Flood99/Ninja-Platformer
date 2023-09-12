// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//function ParticleCreate(_maxsize,_minsize,_sizeinc,_sizewiggle,_speed,_maxdir,_mindir,_particle){
	

//part_type_size(_particle,)

//}
function CreateSmoke(_num,_mindir,_maxdir,_xoff,_yoff)
{
	part_type_direction(global.partSmoke,_mindir,_maxdir,0,1)
	part_particles_create(global.partSystem,x+_xoff,y+_yoff,global.partSmoke,_num)
}