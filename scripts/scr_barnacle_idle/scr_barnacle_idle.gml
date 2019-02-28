x_speed=0;
y_speed+=grv;
scr_colide_and_move();

if(hp<=0)
	{
		var i,dropRate
		dropRate=random(2);
		for(i=0;i<dropRate;i++)
			{
				instance_create_layer(x,y,"layer_player",obj_coin);
			}
			
		instance_create_layer(x,y,"layer_player",obj_barnacle_dead);
		instance_destroy();
	}