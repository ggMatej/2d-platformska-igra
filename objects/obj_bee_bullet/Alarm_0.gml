/// @description 
instance_create_layer(x,y,"layer_player",obj_bee_bullet_explosion_hitbox);
effect_create_above(ef_explosion,x,y,5,c_red);
instance_destroy();