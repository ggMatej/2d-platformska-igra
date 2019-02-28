x_speed=0;
y_speed=0;

if(hp<=0)
	{
		var i,dropRate
		dropRate=random(2);
		for(i=0;i<dropRate;i++)
			{
				instance_create_layer(x,y,"layer_player",obj_coin);
			}
			
		instance_create_layer(x,y,"layer_player",obj_bee_dead);
		instance_destroy();
	}
	

//Chase state
if(distance_to_object(obj_player)<150)
	{
		state=batState.chase;
	}
