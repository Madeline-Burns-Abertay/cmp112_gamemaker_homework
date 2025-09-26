/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 497EDC49
/// @DnDArgument : "speed" "playerSpeed"
speed = playerSpeed;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 357F65E0
/// @DnDArgument : "key" "vk_left"
var l357F65E0_0;l357F65E0_0 = keyboard_check(vk_left);if (l357F65E0_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 134735EE
	/// @DnDParent : 357F65E0
	/// @DnDArgument : "direction" "180"
	direction = 180;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 52A4145E
/// @DnDArgument : "key" "vk_up"
var l52A4145E_0;l52A4145E_0 = keyboard_check(vk_up);if (l52A4145E_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 00CCDE95
	/// @DnDParent : 52A4145E
	/// @DnDArgument : "direction" "90"
	direction = 90;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 29BCDA01
/// @DnDArgument : "key" "vk_right"
var l29BCDA01_0;l29BCDA01_0 = keyboard_check(vk_right);if (l29BCDA01_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 1831B970
	/// @DnDParent : 29BCDA01
	direction = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 358E070E
/// @DnDArgument : "key" "vk_down"
var l358E070E_0;l358E070E_0 = keyboard_check(vk_down);if (l358E070E_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 5A6D4839
	/// @DnDParent : 358E070E
	/// @DnDArgument : "direction" "-90"
	direction = -90;}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 03DE3CDB
/// @DnDArgument : "angle" "-darctan2(vspeed,hspeed)-90"
image_angle = -darctan2(vspeed,hspeed)-90;

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 4E0CE401
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 666A71C0
var l666A71C0_0;l666A71C0_0 = keyboard_check(vk_space);if (l666A71C0_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38EB107C
	/// @DnDParent : 666A71C0
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "charge"
	charge += 1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 1E593E7F
var l1E593E7F_0;l1E593E7F_0 = keyboard_check_released(vk_space);if (l1E593E7F_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 150A948C
	/// @DnDParent : 1E593E7F
	/// @DnDArgument : "var" "charge"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "bigShotThreshold"
	if(charge < bigShotThreshold){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 774FD23F
		/// @DnDParent : 150A948C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_Bullet"
		/// @DnDSaveInfo : "objectid" "obj_Bullet"
		instance_create_layer(x + 0, y + 0, "Instances", obj_Bullet);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5037639D
	/// @DnDParent : 1E593E7F
	else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 37462F66
		/// @DnDParent : 5037639D
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_BigShot"
		/// @DnDSaveInfo : "objectid" "obj_BigShot"
		instance_create_layer(x + 0, y + 0, "Instances", obj_BigShot);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B35BD78
	/// @DnDParent : 1E593E7F
	/// @DnDArgument : "var" "charge"
	charge = 0;}