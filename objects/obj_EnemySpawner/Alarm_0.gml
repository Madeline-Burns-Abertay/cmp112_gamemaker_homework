/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 463A20E8
/// @DnDArgument : "cond" "i < 8"
for(i = 0; i < 8; i += 1) {	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 70845C22
	/// @DnDParent : 463A20E8
	/// @DnDArgument : "var" "enemyX"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "max" "room_width"
	var enemyX = (random_range(0, room_width));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 43ACBA19
	/// @DnDParent : 463A20E8
	/// @DnDArgument : "var" "enemyY"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "max" "room_height"
	var enemyY = (random_range(0, room_height));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6CB9D01E
	/// @DnDParent : 463A20E8
	/// @DnDArgument : "xpos" "enemyX"
	/// @DnDArgument : "ypos" "enemyY"
	/// @DnDArgument : "objectid" "obj_Enemy"
	/// @DnDSaveInfo : "objectid" "obj_Enemy"
	instance_create_layer(enemyX, enemyY, "Instances", obj_Enemy);}