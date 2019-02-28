x_speed=dir*walk_speed;
y_speed+=grv;

//Animation
sprite_index=spr_slime_walk;
if(x_speed!=0) image_xscale=sign(x_speed);

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
		
		if(image_xscale==1)
			{
				if (!position_meeting(x+(sprite_width/2)*dir,y+(sprite_height/2), obj_wall))
					{
						dir*=-1;
				
					}
			}
		else if(image_xscale==-1)
			{
				if (!position_meeting(x+(sprite_width/2)*-dir,y+(sprite_height/2), obj_wall))
				{
					dir*=-1;
				
				}
			}
	}
}
//Vertical movement
y=y+y_speed;






//Hurt state
if(hit==1)
	{
		state=slimeState.hurt;
		alarm[0]=room_speed/4;
	}

//Dead	
if(hp<=0) 
	{
		var i,dropRate
		dropRate=random(2);
		for(i=0;i<dropRate;i++)
			{
				instance_create_layer(x,y,"layer_player",obj_coin);
			}
		with(instance_create_layer(x,y,"layer_player",obj_slime_dead))
			{
				direction=other.hitfrom;
				x_speed=lengthdir_x(3,direction);
				y_speed=lengthdir_y(3,direction)-4;
				if(sign(x_speed)!=0) image_xscale=sign(x_speed);
			}
		instance_destroy();
	}