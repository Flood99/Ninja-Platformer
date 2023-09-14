// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//function ParticleCreate(_maxsize,_minsize,_sizeinc,_sizewiggle,_speed,_maxdir,_mindir,_particle){
	

//part_type_size(_particle,)

//}
function CreateSmoke(_num,_mindir,_maxdir,_xoff,_yoff,_part)
{
	part_type_direction(_part,_mindir,_maxdir,0,1)
	part_particles_create(global.partSystem,x+_xoff,y+_yoff,_part,_num)
}
function CreateBlood(_damageDir,_num)
{
	
	repeat(_num)
	{
		stuff = {damageDir :_damageDir}
				var blood = instance_create_layer(x,y,"Particles",oBlood,stuff)
				with(blood)
				{
					damageDir =_damageDir
				}
		
	}

}