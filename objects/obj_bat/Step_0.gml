/// @description 

switch(state)
{
	case batState.idle: script_execute(scr_bat_idle); break;
	
	case batState.chase: script_execute(scr_bat_chase); break;
}