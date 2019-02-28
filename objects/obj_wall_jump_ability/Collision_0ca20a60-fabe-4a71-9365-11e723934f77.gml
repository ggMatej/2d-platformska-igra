/// @description Ability pickup

with(obj_player_control)
	{
		wall_jump=true;
	}
with(instance_create_layer(obj_player.x,obj_player.y-100,layer,obj_text)) text="Naučili ste skok od zida!\nMožete skakati samo od određenih zidova."
instance_destroy();


