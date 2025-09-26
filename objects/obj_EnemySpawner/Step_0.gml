/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40D23711
/// @DnDArgument : "var" "waveKills"
/// @DnDArgument : "value" "8"
if(waveKills == 8){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 502A5144
	/// @DnDParent : 40D23711
	/// @DnDArgument : "steps" "60+floor(random(120))"
	alarm_set(0, 60+floor(random(120)));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19156FB7
	/// @DnDParent : 40D23711
	/// @DnDArgument : "var" "global.kills"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "2048"
	if(global.kills < 2048){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64C15ECF
		/// @DnDParent : 19156FB7
		/// @DnDArgument : "var" "waveKills"
		waveKills = 0;}}