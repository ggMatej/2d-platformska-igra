/// @description Sates
switch(state)
	{
		case spiderState.walk: script_execute(scr_spider_walk); break;
		
		case spiderState.walk_down: script_execute(scr_spider_walk_down); break;
		
		case spiderState.walk_upside_down: scr_spider_walk_upside_down(); break;
		
		case spiderState.walk_up: scr_spider_walk_up(); break;
		
		case spiderState.explode: script_execute(scr_slime_explode); break;
	}