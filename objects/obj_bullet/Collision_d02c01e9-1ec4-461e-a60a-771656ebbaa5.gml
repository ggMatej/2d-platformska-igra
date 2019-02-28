/// @description Sudar s metkom
with(other)
	{
		
		if(invincible==0)
		{
			hit=1;
			hp=hp-obj_gun.dmg;
			flash=3;
			hitfrom=other.direction;
		}
		
	}
instance_destroy();