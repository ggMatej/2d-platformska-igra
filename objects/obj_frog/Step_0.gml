/// @description States

switch(state)
	{
		case frogState.wander: script_execute(scr_frog_wander); break;
		
		case frogState.jump: script_execute(scr_frog_jump); break;
		
		case frogState.chase: script_execute(scr_frog_chase); break;
		
	}
	
	