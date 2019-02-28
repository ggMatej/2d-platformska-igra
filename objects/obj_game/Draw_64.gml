/// @description Draw coins

if(room!=rMenu) 
	{
		cointextscale= max(cointextscale*0.95,1);
		scr_draw(c_black,fMenu,fa_right,fa_top);
		draw_text_transformed(RES_W-8,12,"Novci: " + string(global.coins),cointextscale,cointextscale,0);
		draw_set_color(c_white);
		draw_text_transformed(RES_W-10,10,"Novci: " + string(global.coins),cointextscale,cointextscale,0);
}