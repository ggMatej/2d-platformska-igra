/// @description 
if(state=flyState.shoot)
	{
			with(instance_create_layer(x,y,"layer_bullet",obj_fly_bullet))
				{
					speed=10;
					image_angle=point_direction(other.x,other.y,obj_player.x,obj_player.y)
					direction=image_angle;
				}
	}

alarm[0]=room_speed*2;