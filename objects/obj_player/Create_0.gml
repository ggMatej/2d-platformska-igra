/// @description Varijable
global.coins-=global.coinsthisroom;
//----------MOVEMENT

walk_speed=5;
x_speed=0;
y_speed=0;
grv=0.3;

//----------JUMPING

jumps=0;
//jumps_max=2;
jump_speed=7;

//----------COMBAT
hit=0;
invincible=0;
//hp=5;
hitfrom=0;

//----------STATE

state=playerState.moving;


 

//----------DASH STATE VARIABLES

dash_cooldown=0;
//dash_ability=true;

//----------WALL JUMP

//wall_jump=true;

//----------WEAPONS

//sword_picked_up=false;
//gun_picked_up=false;
//current_weapon=noone;

//---------ANIMATIONS
//current_animation=scr_player_basic_anim;
key_down=0;

//---------PLATFORM
is_on_platform=0;
move_direction=0;

hascontrol = true;


scr[0]=obj_player_control.hp;
scr[1]=obj_player_control.jumps_max;
scr[2]=obj_player_control.sword_picked_up;
scr[3]=obj_player_control.gun_picked_up;
scr[4]=obj_player_control.dash_ability;
scr[5]=obj_player_control.wall_jump;
scr[6]=global.coins;


