/// @description Ability pick up
with(obj_player_control)
	{
		dash_ability=true;
	}
with(instance_create_layer(obj_player.x,obj_player.y-100,layer,obj_text)) text="Naučili ste pokret ubrzanje!\nPritisnite SHIFT za ubrzanje."
instance_destroy();

