draw_text(10, 10, string("kills: ") + string(global.kills));
if(global.playerDead)
{
	draw_text_transformed(550, 300, string("Game Over") + "", 4, 4, 0);
	if(global.kills < 2048)
	{
		draw_text_transformed(600, 400, string("Press ENTER to restart") + "", 1, 1, 0);
	}
	else
	{
		draw_text_transformed(600, 350, string("Wow. You're winner. Now PLEASE touch grass.") + "", 1, 1, 0);
	}
	if (keyboard_check_pressed(vk_enter))
	{
		game_restart();
	}
}