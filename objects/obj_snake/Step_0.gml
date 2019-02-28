/// @description States

switch(state)
	{
		case snakeState.chase: script_execute(scr_snake_chase); break;
		
		case snakeState.hurt: script_execute(scr_snake_hurt); break;
	}