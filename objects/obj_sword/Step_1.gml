scr_get_input();

//Image index
image_index=0;

//Sword position
if(obj_player.state==playerState.duck)
{
	if(obj_player.image_xscale==1)
	{
		x=obj_player.x-20;
		y=obj_player.y+40;
	}else
	{
		x=obj_player.x+20;
		y=obj_player.y+40;
	}
}
else
{
	if(obj_player.image_xscale==1)
	{
		x=obj_player.x-7;
		y=obj_player.y+20;
	}else
	{
		x=obj_player.x+7;
		y=obj_player.y+20;
	}
}

//Sword direction
image_angle=point_direction(x,y,mouse_x,mouse_y);

//Shoting
sword_cooldown=sword_cooldown-1;
recoil= max(0,recoil-1);



if(key_attack_sword && sword_cooldown<0 && obj_player.state!=playerState.duck)
{
	recoil=25;
	sword_cooldown=current_cooldown;
	with(instance_create_layer(x,y,"layer_hitbox",obj_hitbox))
	{
		direction=other.image_angle;
		image_angle=direction;
	}
}



x=x+lengthdir_x(recoil,image_angle);
y=y+lengthdir_y(recoil,image_angle);
