//----------BASIC MOVEMENT
if(obj_player.hascontrol==true)
	{
		key_left=keyboard_check(ord("A"));
		key_right=keyboard_check(ord("D"));
		key_jump=keyboard_check_pressed(vk_space);
		key_jump_held=keyboard_check(vk_space);
		key_duck=keyboard_check(vk_control);
		key_up=keyboard_check(ord("W"));

//----------DASH
		key_dash=keyboard_check_pressed(vk_shift);

//----------ATTACK
		key_attack=mouse_check_button(mb_left);
		key_attack_sword=mouse_check_button_pressed(mb_left);


//----------CYCLE WEAPONS
		key_sword=keyboard_check_pressed(ord("1"));
		key_gun=keyboard_check_pressed(ord("2"));
		key_noWeapon=keyboard_check_pressed(ord("0"));
	}
else
	{
		key_left=0;
		key_right=0;
		key_jump=0;
	}
