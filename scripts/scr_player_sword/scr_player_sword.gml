if(!instance_exists(obj_sword) && obj_player_control.sword_picked_up==true)
{
	if(instance_exists(obj_gun)) instance_destroy(obj_gun);
	instance_create_layer(x,y,"layer_sword",obj_sword);
	obj_player_control.current_weapon=obj_sword;
	state=playerState.moving;
}else state=playerState.moving;
