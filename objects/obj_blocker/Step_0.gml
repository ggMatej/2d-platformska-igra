/// @description States

switch(state)
	{
		case blockerState.wander: script_execute(scr_blocker_wander); break;
		
		case blockerState.jump: script_execute(scr_blocker_jump); break;
		
		case blockerState.chase: script_execute(scr_blocker_chase); break;
		
		case blockerState.explode: script_execute(scr_blocker_explode); break;
		
	}
	
	