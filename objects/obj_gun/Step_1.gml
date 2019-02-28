scr_get_input();



//Gun position
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

//Gun direction
image_angle=point_direction(x,y,mouse_x,mouse_y);

//Shoting
gun_cooldown=gun_cooldown-1;
recoil= max(0,recoil-1);


if(key_attack && gun_cooldown<0 && obj_player.state!=playerState.duck)
{
	recoil=4;
	gun_cooldown=current_cooldown;
	with(instance_create_layer(x,y,"layer_bullet",obj_bullet))
	{
		speed=15;
		direction=other.image_angle;
		image_angle=direction;
	}
}

//Gun recoil
x=x-lengthdir_x(recoil,image_angle);
y=y-lengthdir_y(recoil,image_angle);

//Fliping the gun
if(image_angle>90 && image_angle<270)
{
	image_yscale=-1;
}
else
{
	image_yscale=1;
}
