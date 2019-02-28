/// @description Stanje igrača

switch(state)
	{
		case playerState.moving: script_execute(scr_player_moving);
								 break;
								 
		case playerState.duck: script_execute(scr_player_duck);
							   break;
							  
		case playerState.dash: script_execute(scr_player_dash);
							   break;
							   
		case playerState.onWall: script_execute(scr_player_onWall);
								 break;
								 
		case playerState.gun: script_execute(scr_player_gun); 
							  break;
							  
		case playerState.sword: script_execute(scr_player_sword); 
							    break;
							  
		case playerState.hurt: script_execute(scr_player_hurt);
							   break;
     }


