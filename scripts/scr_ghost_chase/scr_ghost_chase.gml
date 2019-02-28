sprite_index=spr_ghost_chase;
image_xscale=sign(obj_player.x-x);
walk_speed=3;

move_towards_point(obj_player.x,obj_player.y,walk_speed);
if(distance_to_object(obj_player)>300)
{
	walk_speed=2;
	sprite_index=spr_ghost_idle;
	path_start(path_ghost,walk_speed,path_action_reverse,false);
	state=ghostState.idle;
}

if(place_meeting(x,y,obj_player))
	{
		if(obj_player.y < y-5)
			{
				with(obj_player) y_speed=-10;
				hp=0;
				
			}
	}

if(hp<=0)
	{
		var i,dropRate
		dropRate=random(2);
		for(i=0;i<dropRate;i++)
			{
				instance_create_layer(x,y,"layer_player",obj_coin);
			}
			
		instance_create_layer(x,y,"layer_player",obj_ghost_dead);
		instance_destroy();
	}