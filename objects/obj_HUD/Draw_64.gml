/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6D14C5B3
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""kills: ""
/// @DnDArgument : "var" "global.kills"
draw_text(10, 10, string("kills: ") + string(global.kills));

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31BDB428
/// @DnDArgument : "expr" "global.playerDead"
if(global.playerDead){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5CC991F4
	/// @DnDParent : 31BDB428
	/// @DnDArgument : "x" "550"
	/// @DnDArgument : "y" "300"
	/// @DnDArgument : "xscale" "4"
	/// @DnDArgument : "yscale" "4"
	/// @DnDArgument : "caption" ""Game Over""
	draw_text_transformed(550, 300, string("Game Over") + "", 4, 4, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52B5A3E6
	/// @DnDParent : 31BDB428
	/// @DnDArgument : "var" "global.kills"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "2048"
	if(global.kills < 2048){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 68AD7786
		/// @DnDParent : 52B5A3E6
		/// @DnDArgument : "x" "600"
		/// @DnDArgument : "y" "400"
		/// @DnDArgument : "caption" ""Press ENTER to restart""
		draw_text_transformed(600, 400, string("Press ENTER to restart") + "", 1, 1, 0);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 376BBD47
	/// @DnDParent : 31BDB428
	else{	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4B321941
		/// @DnDParent : 376BBD47
		/// @DnDArgument : "x" "600"
		/// @DnDArgument : "y" "400"
		/// @DnDArgument : "caption" ""Please. Get a life.""
		draw_text_transformed(600, 400, string("Please. Get a life.") + "", 1, 1, 0);}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0C92203E
	/// @DnDParent : 31BDB428
	/// @DnDArgument : "key" "vk_enter"
	var l0C92203E_0;l0C92203E_0 = keyboard_check_pressed(vk_enter);if (l0C92203E_0){	/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 5EC362DE
		/// @DnDParent : 0C92203E
		game_restart();}}