/// @description Explode

var i,dropRate
dropRate=random(4);
for(i=0;i<dropRate;i++)
	{
		instance_create_layer(x,y,"layer_player",obj_coin);
	}

instance_create_layer(x,y,"layer_player",obj_blocker_explosion_hitbox);
effect_create_above(ef_explosion,obj_blocker.x,obj_blocker.y-5,5,c_red);

instance_destroy();
		