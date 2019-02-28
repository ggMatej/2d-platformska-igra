scr_get_input();
mask_index=spr_player_duck;

				
//Move state
if(key_duck==0)
	{
		mask_index=spr_player_idle;
		state=playerState.moving;
	}

//Animation	
script_execute(obj_player_control.current_animation);


