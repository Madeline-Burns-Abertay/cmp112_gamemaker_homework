/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0E8664F5
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3B4D8916
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.kills"
global.kills += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1FC7BD6C
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_EnemySpawner.waveKills"
obj_EnemySpawner.waveKills += 1;