/// @description Jumping

switch(state)
	{
		case frogState.wander:
			{
				
				dir=sign(random_range(-1,1));
				y_speed=-5;
				walk_speed=2;
				state=frogState.jump;
				alarm[0]=room_speed;
				
				
			}
		break;
		
		case frogState.chase:
			{
				
				dir=sign(obj_player.x-x);
				y_speed=-6.5;
				walk_speed=3;
				state=frogState.jump;
				alarm[0]=room_speed*0.9;
				
				
			}
			
		
	}


