if(!place_meeting(x,y+1,obj_wall))
{
	x_speed=sign(obj_player.x-x)*walk_speed;
}
else
{
	x_speed=0;
}


y_speed+=grv;

scr_colide_and_move();
sprite_index=spr_blocker_explode;
