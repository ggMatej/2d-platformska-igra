menu_x += (menu_x_target - menu_x)/ menu_speed;

if(menu_control)
	{
		if(keyboard_check_pressed(ord("W")))
			{
				menu_cursor++;
				if (menu_cursor >= menu_items) menu_cursor=0;
			}
		if(keyboard_check_pressed(ord("S")))
			{
				menu_cursor--;
				if (menu_cursor < 0) menu_cursor=menu_items-1;
			}
		if(keyboard_check_pressed(vk_enter))
			{
				menu_x_target  = gui_width +200;
				menu_commited = menu_cursor;
				menu_control=false;
			}
	}
	
if(menu_x > gui_width +150) && (menu_commited != -1)
	{
		switch (menu_commited)
			{
				case 2: default: scr_tranzicija(TRANS_MODE.NEXT); break;
				#region CASE 1
				case 1:
					{
						if(!file_exists(SAVEFILE))
							{
								scr_tranzicija(TRANS_MODE.NEXT);
							}
						else
							{
								
								var i, file = file_text_open_read(SAVEFILE);
								for(i=0;i<8;i++)
									{
										scr2[i] = file_text_read_real(file);
										file_text_readln(file);
									}
								file_text_close(file);
								scr_tranzicija(TRANS_MODE.GOTO,scr2[0]);
								obj_player_control.hp=scr2[1];
								obj_player_control.jumps_max=scr2[2];
								obj_player_control.sword_picked_up=scr2[3];
								obj_player_control.gun_picked_up=scr2[4];
								obj_player_control.dash_ability=scr2[5];
								obj_player_control.wall_jump=scr2[6];
								global.coins=scr2[7];
								
								
								
								}
					} break; #endregion
				
				case 0: game_end(); break;
			}
	}