scr_get_input();
				
				mask_index=spr_player_onWall;
				script_execute(obj_player_control.current_animation);
				if (place_free(x,y+1))
		            {
		                y_speed=3;
						x_speed=0;
						scr_colide_and_move();
		            }
	            else
		            {
						
						mask_index=spr_player_idle;
						state=playerState.moving;
						
		            }
				if(!place_meeting(x+1,y,obj_wall_jump) && image_xscale==1 || !place_meeting(x-1,y,obj_wall_jump) && image_xscale==-1)
					{
						jumps=1;
						x_speed=0;
						scr_colide_and_move();
						mask_index=spr_player_idle;
						state=playerState.moving;
					
					}
				
				if(place_meeting(x+1,y,obj_wall_jump) && key_jump && key_left)
					{
						
						jumps=1;
						y_speed=-8;
						scr_colide_and_move();
						mask_index=spr_player_idle;
						state=playerState.moving;
						
					}
				else if(place_meeting(x-1,y,obj_wall_jump) && key_jump && key_right)
					{
						
						jumps=1;
						y_speed=-8;
						scr_colide_and_move();
						mask_index=spr_player_idle;
						state=playerState.moving;
						
					}
