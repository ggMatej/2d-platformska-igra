if(!instance_exists(obj_gun) && obj_player_control.gun_picked_up==true)
{
	if(instance_exists(obj_sword)) instance_destroy(obj_sword);
	instance_create_layer(x,y,"layer_gun",obj_gun);
	obj_player_control.current_weapon=obj_gun;
	state=playerState.moving;
}else state=playerState.moving;
