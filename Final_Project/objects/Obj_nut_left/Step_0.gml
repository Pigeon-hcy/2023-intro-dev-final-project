//increase the angle
angel += 20;
//spin the angle
image_angle = angel;
//make the nut fall
y_speed --;


//make the x_speed decrease
if(x_speed != 0)
{
	x_speed -= x_speed_rate;
}

//move the nut
y -= y_speed;
x -= x_speed;

//destory the nut when x_speed  = 0
if (x_speed = 0)
{
	instance_destroy();
}

