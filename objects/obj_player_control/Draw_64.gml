		
	if(room!=rMenu)
	{
		scr_draw(c_black,fMenu,fa_left,fa_top);
		draw_text_transformed(RES_W/20-8,12,"Hp: " + string(obj_player_control.hp),obj_game.cointextscale,obj_game.cointextscale,0);
		draw_set_color(c_white);
		draw_text_transformed(RES_W/20-10,10,"Hp: " + string(obj_player_control.hp),obj_game.cointextscale,obj_game.cointextscale,0);
	}