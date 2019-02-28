y_speed=-dir*walk_speed;
x_speed+=grv;

//Animation
sprite_index=spr_spider_walk_up;



//----------HORIZONTAL COLLISION
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
//Horizontal movement
y=y+y_speed;

//----------VERTICAL COLLISION
for(i=1;i<=100;i++)
{
	if(place_meeting(x+x_speed/i,y,obj_wall))
	{
		while(!place_meeting(x+sign(x_speed),y,obj_wall))
		{
			x=x+sign(x_speed);
		}
		x_speed=0;
		
		
				if (!position_meeting(x+sprite_get_height(spr_spider_walk)/2,y-sprite_get_width(spr_spider_walk)/1000, obj_wall))
					{
						y=y-1.5;
						x=x+1;
						state=spiderState.walk;
				
					}
		
	}
}
//Vertical movement
x=x+x_speed;
//Dead	
if(hp<=0) 
	{
		var i,dropRate
		dropRate=random(2);
		for(i=0;i<dropRate;i++)
			{
				instance_create_layer(x,y,"layer_player",obj_coin);
			}
		with(instance_create_layer(x,y,"layer_player",obj_spider_dead))
			{
				direction=other.hitfrom;
				x_speed=lengthdir_x(3,direction);
				y_speed=lengthdir_y(3,direction)-4;
				if(sign(x_speed)!=0) image_xscale=sign(x_speed);
			}
			instance_create_layer(x,y,"layer_player",obj_frog_posion_hitbox);
		instance_destroy();
	}