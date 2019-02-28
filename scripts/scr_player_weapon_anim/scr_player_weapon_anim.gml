switch(state)
	{
		case playerState.moving: #region Moving
			{
					if(!place_meeting(x,y+1,obj_wall))
						{
							sprite_index=spr_player_jump_w;
						}
					else if(x_speed==0)
						{
							sprite_index=spr_player_idle_w;
						}
					else
						{
							image_speed=1;
							sprite_index=spr_player_moving_w;
						}
				
				if(x_speed!=0) image_xscale=sign(x_speed);
				
			}
			break;
			#endregion
		case playerState.duck: #region Duck  
			{
				sprite_index=spr_player_duck_w;
			}
			break;
			#endregion
		case playerState.dash: #region Dash
			{
				var dash=instance_create_layer(x,y,"layer_player",obj_dash_effect); 
				dash.sprite_index=sprite_index; 
				dash.image_index=image_index;
			}
			break;
			#endregion
		case playerState.onWall: #region onWall
			{
				sprite_index=spr_player_onWall_w;
			}
			break;
			#endregion
		case playerState.hurt: #region Hurt
			{
				sprite_index=spr_player_hurt_w;
			}
			break;
			#endregion
	}
