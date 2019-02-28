/// @description States

switch(state)
	{
		case snailState.idle: script_execute(scr_snail_idle); break;
		
		case snailState.chase: script_execute(scr_snail_chase); break;
		
		case snailState.hurt: script_execute(scr_snail_hurt); break;
	}