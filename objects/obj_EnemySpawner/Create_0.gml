/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4A54FE4D
/// @DnDArgument : "var" "kills"
global.kills = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 300EEF55
/// @DnDArgument : "var" "waveKills"
waveKills = 0;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 621E5073
randomize();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 58D9649D
/// @DnDArgument : "funcName" "spawnEnemies"
/// @DnDArgument : "arg" "count=8"
function spawnEnemies(count=8) {	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 53305126
	/// @DnDParent : 58D9649D
	/// @DnDArgument : "cond" "i < count"
	for(i = 0; i < count; i += 1) {	/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 5267B6A1
		/// @DnDParent : 53305126
		/// @DnDArgument : "var" "enemyX"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "max" "room_width"
		var enemyX = (random_range(0, room_width));
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 05BE682F
		/// @DnDParent : 53305126
		/// @DnDArgument : "var" "enemyY"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "max" "room_height"
		var enemyY = (random_range(0, room_height));
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5E8A35AE
		/// @DnDParent : 53305126
		/// @DnDArgument : "xpos" "enemyX"
		/// @DnDArgument : "ypos" "enemyY"
		/// @DnDArgument : "objectid" "obj_Enemy"
		/// @DnDSaveInfo : "objectid" "obj_Enemy"
		instance_create_layer(enemyX, enemyY, "Instances", obj_Enemy);}}