if(!place_meeting(x,y+1,obj_wall))
{
	x_speed=dir*walk_speed;
}
else
{
	x_speed=0;
}


y_speed+=grv;

scr_colide_and_move();

//Animation

sprite_index=spr_blocker_wander;

//Chase state
if(distance_to_object(obj_player)<200)
	{
		
		state=blockerState.chase;
	}
	
//Hit
if(hit==1) alarm[1]=room_speed/4;

//Explode state
if(hp<=0)
	{
		alarm[2]=room_speed*2;
		state=blockerState.explode;
	}
	