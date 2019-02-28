dir=sign(obj_player.x-x);
x_speed=dir*walk_speed;
y_speed+=grv;
invincible=0;

scr_colide_and_move();

//Animation
sprite_index=spr_snake_walk;
if(x_speed!=0) image_xscale=sign(x_speed);

//Hurt state
if(hit==1 && invincible==0)
	{
		
		state=snakeState.hurt;
		alarm[0]=room_speed/4;
	}
	


//Dead 
if(hp<=0) 
	{
		var i,dropRate
		dropRate=random(3);
		for(i=0;i<dropRate;i++)
			{
				instance_create_layer(x,y,"layer_player",obj_coin);
			}
		with(instance_create_layer(x,y,"layer_player",obj_snake_dead))
			{
				direction=other.hitfrom;
				x_speed=lengthdir_x(3,direction);
				y_speed=lengthdir_y(3,direction)-4;
				if(sign(x_speed)!=0) image_xscale=sign(x_speed);
			}
		instance_destroy();
	}
	
if(distance_to_object(obj_player)==0) x_speed=0;



	