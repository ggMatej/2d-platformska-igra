/// @description Sates
switch(state)
	{
		case slimeState.moving: script_execute(scr_slime_moving); break;
		
		case slimeState.hurt: script_execute(scr_slime_hurt); break;
	}