scr_get_input();
var dash_direction=key_right-key_left;
x_speed=dash_direction*walk_speed*4;
y_speed=0.01;
scr_colide_and_move();
				
//State wall jump
if((place_meeting(x+1,y,obj_wall_jump) && !place_meeting(x,y+1,obj_wall_jump) && image_xscale==1 && obj_player_control.wall_jump==true) || (place_meeting(x-1,y,obj_wall_jump) && !place_meeting(x,y+1,obj_wall_jump) && image_xscale==-1 && obj_player_control.wall_jump==true )) 
	{
		state=playerState.onWall;
	}

//Animation
script_execute(obj_player_control.current_animation);