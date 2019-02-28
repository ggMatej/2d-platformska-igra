/// @description
instance_create_layer(x,y,"layer_bullet",obj_bee_bullet_explosion_hitbox);
effect_create_above(ef_explosion,x,y,5,c_red);
with(other)
{
	hit=1;
	obj_player_control.hp--;
}




instance_destroy();