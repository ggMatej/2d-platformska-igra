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

//Animation

sprite_index=spr_blocker_chase;
if(x_speed!=0) image_xscale=sign(x_speed);

//Wander state
if(distance_to_object(obj_player)>200)
	{
		
		state=blockerState.wander;
	}

//Hit
if(hit==1) alarm[1]=room_speed/4;

//Explode state
if(hp<=0)
	{
		state=blockerState.explode;
		alarm[2]=room_speed*2;
	}