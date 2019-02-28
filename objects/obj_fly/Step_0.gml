/// @description 

switch(state)
	{
		case flyState.wander: script_execute(scr_fly_wander); break;
		
		case flyState.shoot: script_execute(scr_fly_shoot); break;
	}