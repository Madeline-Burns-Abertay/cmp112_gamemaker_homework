/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0E8EF927
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 498AA0F6
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2A93C498
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.kills"
global.kills += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 449E932E
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_EnemySpawner.waveKills"
obj_EnemySpawner.waveKills += 1;