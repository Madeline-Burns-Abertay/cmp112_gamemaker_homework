speed = playerSpeed;
if (keyboard_check(vk_left))
{
	direction = 180;
}
if (keyboard_check(vk_up))
{
	direction = 90;
}
if (keyboard_check(vk_right))
{
	direction = 0;
}
if (keyboard_check(vk_down))
{
	direction = -90;
}
image_angle = -darctan2(vspeed,hspeed)-90;
move_wrap(1, 1, 0);
if (keyboard_check(vk_space))
{
	charge += 1;
}
if (keyboard_check_released(vk_space))
{
	if(charge < bigShotThreshold)
	{
		instance_create_layer(x + 0, y + 0, "Instances", obj_Bullet);
	}
	else
	{
		instance_create_layer(x + 0, y + 0, "Instances", obj_BigShot);
	}
	charge = 0;
}