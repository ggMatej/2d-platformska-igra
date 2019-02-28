/// @description Ability pickup

with(obj_player_control)
	{
		jumps_max=2;
	}
with(instance_create_layer(obj_player.x,obj_player.y-100,layer,obj_text)) text="Naučili ste pokret dupli skok!"
instance_destroy();


