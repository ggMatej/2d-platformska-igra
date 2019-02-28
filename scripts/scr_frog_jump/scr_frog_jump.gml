x_speed=dir*walk_speed;

scr_colide_and_move();



//----------HORIZONTAL COLLISION
for(i=1;i<=100;i++)
{
	if(place_meeting(x+x_speed/i,y,obj_wall))
	{
		while(!place_meeting(x+sign(x_speed),y,obj_wall))
		{
			x=x+sign(x_speed);
		}
		x_speed=0;
		dir*=-1;
	}
}
//Horizontal movement
x=x+x_speed;

//----------VERTICAL COLLISION
for(i=1;i<=100;i++)
{
	if(place_meeting(x,y+y_speed/i,obj_wall))
	{
		while(!place_meeting(x,y+sign(y_speed),obj_wall))
		{
			y=y+sign(y_speed);
		}
		y_speed=0;
	}
}
//Vertical movement
y=y+y_speed;

if(!place_meeting(x,y+1,obj_wall) && !(distance_to_object(obj_player)<200))
	{
		
		state=frogState.wander;
	}
else if(!place_meeting(x,y+1,obj_wall) && (distance_to_object(obj_player)<200))
	{
		
		state=frogState.chase;
	}
	