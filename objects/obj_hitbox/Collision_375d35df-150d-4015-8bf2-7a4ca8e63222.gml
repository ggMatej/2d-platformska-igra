/// @description Uadarac u neprijatelja

with(other)
	{
		if(invincible==0)
		{
			hit=1;
			hp=hp-obj_sword.dmg;
			flash=3;
			hitfrom=other.direction;
		}
	}