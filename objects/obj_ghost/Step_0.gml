/// @description 
switch(state)
{
	case ghostState.idle: script_execute(scr_ghost_idle); break;
	
	case ghostState.chase: script_execute(scr_ghost_chase); break;
}