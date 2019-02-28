//Animation
if(direction>=90 && direction<=270) image_xscale=-1 else image_xscale = 1;



//Shoot state
if(distance_to_object(obj_player)<150)
	{
		state=flyState.shoot;
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
	
