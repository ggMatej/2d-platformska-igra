direction=other.hitfrom;
x_speed=lengthdir_x(3,direction);

if(sign(x_speed)!=0) image_xscale=-sign(x_speed);
scr_colide_and_move();