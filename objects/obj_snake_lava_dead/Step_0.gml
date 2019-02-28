/// @description 
y_speed+=grv;

if(done==0)
	{
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
		}
	}
	//Horizontal movement
	x=x+x_speed;

	//----------VERTICAL COLLISION
	for(i=1;i<=100;i++)
	{
		if(place_meeting(x,y+y_speed/i,obj_wall))
		{
			if(y_speed>0)
				{
					done=1;
					sprite_index=spr_snake_lava_dead;
				}
			while(!place_meeting(x,y+sign(y_speed),obj_wall))
			{
				y=y+sign(y_speed);
			}
			y_speed=0;
		}
	}
	//Vertical movement
	y=y+y_speed;

}