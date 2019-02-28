if(distance_to_object(obj_player)<150)
	{
		instance_create_layer(x,y+21,"layer_player",obj_snake_spawn);
		instance_destroy();
	}