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

if(place_meeting(x,y+1,obj_wall))
	{
		sprite_index=spr_frog_wander;
	}
else sprite_index=spr_frog_jump;
if(x_speed!=0) image_xscale=sign(x_speed);

//Chase state
if(distance_to_object(obj_player)<100)
	{
		
		state=frogState.chase;
	}
	
//Hit
if(hit==1) alarm[1]=room_speed/4;

//Dead
if(hp<=0)
	{
		var i,dropRate
		dropRate=random(2);
		for(i=0;i<dropRate;i++)
			{
				instance_create_layer(x,y,"layer_player",obj_coin);
			}
		
		instance_create_layer(x,y,"layer_player",obj_frog_posion_hitbox);
		instance_destroy();
	}
	