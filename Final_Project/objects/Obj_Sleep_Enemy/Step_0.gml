//update distance and direction
distanceToPlayer = distance_to_object(Obj_Player);
directionToPlayer = point_direction(x,y,Obj_Player.x,Obj_Player.y);


// if player close change into notice
if(distanceToPlayer < 300)
{
	notice = true;
}else
{
	notice = false
}

//if player get too close start move
if(distanceToPlayer < 150)
{
	follow = true;
}else
{
	follow = false
}

//change the direction depend on the angle of player
if(directionToPlayer < 270 && directionToPlayer > 90)
{
	move_speed = -1;
}else
{
	move_speed = 1;
}

//change the notice spr
if(notice)
{
	sprite_index = Spr_enemy_notice;
}


//change back if player leave
if(!notice)
{
	sprite_index = Spr_enemy;
}

//change the ai after player get too close
if(follow || on_hit)
{
	x += move_speed;
	sprite_index = Spr_enemy_attack;
}

//trigger something when hp is lower than 0
if(HP < 0)
{
	alarm[0] = 1.5;
	//effect_1 is screen shake
	layer_set_visible("Effect_1",true);
	
}

