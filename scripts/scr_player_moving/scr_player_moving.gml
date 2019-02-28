scr_get_input();
move_direction=key_right-key_left;
x_speed=move_direction*walk_speed
y_speed+=grv;
scr_colide_and_move();

if(place_meeting(x,y+1,obj_platform) && x_speed=0)
	{
		var instance=instance_place(x,y+1,obj_platform);
		if(instance!=noone)
		{
		
	        sprite_index=spr_player_idle;
			x_speed=instance.x_speed*instance.dir;
			scr_colide_and_move();
		}
		
	}
else if(place_meeting(x,y+1,obj_platform) && (key_left || key_right))
	{
		var instance=instance_place(x,y+1,obj_platform);
		if(instance!=noone)
		{
		move_direction=key_right-key_left;
		if(move_direction!=instance.dir)
			x_speed=move_direction*0.5;
		else 
			x_speed=move_direction*2;
		scr_colide_and_move();
		}
	}



				


//Jumping

if(place_meeting(x,y+1,obj_wall))
	{
		jumps=obj_player_control.jumps_max;
	}
				
else if(!place_meeting(x,y+1,obj_wall) && jumps==obj_player_control.jumps_max)
	{
		jumps=0;
	}
				
if(key_jump && jumps>0)
	{
		jumps-=1;
		y_speed=-jump_speed;
	}


if(y_speed<0 && !key_jump_held) y_speed=max(y_speed,-jump_speed/3) 
				
//State duck

if(key_duck && place_meeting(x,y+1,obj_wall))
	{
		state=playerState.duck;
	}

//State dash

if(key_dash && dash_cooldown<1 && obj_player_control.dash_ability==true)
	{
		state=playerState.dash;
		alarm[0]=room_speed/4;
		dash_cooldown=90;
	}
		dash_cooldown--;

if(dash_cooldown <-100) dash_cooldown=0;

//State hurt
if( hit==1 and invincible==0)
	{
		obj_player_control.hp--;
		state=playerState.hurt;
		alarm[1]=room_speed/4;
		alarm[2]=room_speed/2;
	}
				
//State wall jump
if((place_meeting(x+1,y,obj_wall_jump) && !place_meeting(x,y+1,obj_wall_jump) && image_xscale==1 && obj_player_control.wall_jump==true) || (place_meeting(x-1,y,obj_wall_jump) && !place_meeting(x,y+1,obj_wall_jump) && image_xscale==-1 && obj_player_control.wall_jump==true )) 
					{
						state=playerState.onWall;
					}
//State dead
if(obj_player_control.hp<=0)
	{
		obj_player_control.hp=5;
		scr_tranzicija(TRANS_MODE.GOTO,room);
	}

//State gun
if(key_gun)
	{
		state=playerState.gun;
	}
	
//State sword

if(key_sword)
	{
		state=playerState.sword;
	}

					
//Animation
if(obj_player_control.current_weapon!=noone) obj_player_control.current_animation=scr_player_weapon_anim;
		


//No weapon
if(key_noWeapon)
	{
		instance_destroy(obj_player_control.current_weapon);
		obj_player_control.current_weapon=noone;
		obj_player_control.current_animation=scr_player_basic_anim;
	}

script_execute(obj_player_control.current_animation);

