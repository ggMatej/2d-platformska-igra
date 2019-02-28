global.coinsthisroom=0;
with( obj_player)
	{
		if(hascontrol)
			{
				hascontrol = false;
				scr_tranzicija(TRANS_MODE.GOTO,other.target);
			}
	}