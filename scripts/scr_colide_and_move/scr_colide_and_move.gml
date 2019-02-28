//----------HORIZONTAL COLLISION

for(i=1;i<=100;i++)
{
	if(place_meeting(x+x_speed/i,y,obj_wall))
	{
		
		yplus=0;
		//Going up
		while (place_meeting(x+x_speed,y-yplus,obj_wall) && yplus<= abs(1*x_speed)) yplus+=1;
		if(place_meeting(x+x_speed,y-yplus,obj_wall))
		{	
	
			while(!place_meeting(x+sign(x_speed),y,obj_wall))
				{
					x=x+sign(x_speed);
				}
				x_speed=0;
		}
		else
		{
			y -=yplus;
		}
		
		
		
	}
	//PLATFORMA
	if(place_meeting(x+x_speed,y,obj_platform))
	{
		var instance =instance_place(x+x_speed,y,obj_platform)
		if(instance!=noone)
			{
				x+=instance.dir*instance.x_speed;
				if(instance.x<instance.position_from || instance.x>instance.position_to)
					{
						x-=instance.dir*instance.x_speed;
					}
			}
			x_speed=0;
	}
	
	
}


x=x+x_speed;

if ((!place_meeting(x,y,obj_wall)) &&  place_meeting(x,y+2+abs(x_speed),obj_wall))
{
	while(!place_meeting(x,y+1,obj_wall)) y += 1;
}

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

