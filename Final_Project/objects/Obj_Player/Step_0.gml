//move the character
x += x_speed;
y -= y_speed;


//press D to keep increase the speed of the x_speed until 10
if(keyboard_check(ord("D")) && x_speed < 10)
{
	x_speed += 0.5;
}

//reset the x_speed to 0 when player release D
if(x_speed > 0 && !keyboard_check(ord("D")))
{
	x_speed -= 1;
}

//press A to keep increase the speed of the x_speed until -10
if(keyboard_check(ord("A")) && x_speed > -10)
{
	x_speed -= 0.5;
}

//reset the x_speed to 0 when player release D
if(x_speed < 0 && !keyboard_check(ord("A")))
{
	x_speed += 1;
}

//fall on ground when player on the air
if(place_meeting(x,y + 10,Obj_ground))
{
	y_speed = 0;
	jump_time = true;
}else
{
	y_speed -= 0.5;
}
