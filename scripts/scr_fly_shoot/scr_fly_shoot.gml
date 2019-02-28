path_speed=0;
image_xscale=sign(obj_player.x-x);

if(distance_to_object(obj_player)>300)
	{
		path_speed=walk_speed;
		state=flyState.wander;
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
			
		instance_create_layer(x,y,"layer_player",obj_fly_dead);
		instance_destroy();
	}