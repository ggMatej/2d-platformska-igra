//Animation
if(direction>=90 && direction<=270) image_xscale=-1 else image_xscale = 1;


if(distance_to_object(obj_player)<200)
	{
		path_end();
		state=ghostState.chase;
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
	
if(place_meeting(x,y,obj_player))
	{
		if(obj_player.y < y-5)
			{
				with(obj_player) y_speed=-10;
				hp=0;
				
			}
	}