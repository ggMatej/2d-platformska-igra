with( obj_player)
	{
		if(hascontrol && key_up)
			{
				hascontrol = false;
				scr_tranzicija(TRANS_MODE.GOTO,other.target);
			}
	}