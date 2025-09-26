/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 654D7886
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 60A655C3
/// @DnDArgument : "angle" "direction-90"
image_angle = direction-90;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1AA35C06
/// @DnDArgument : "speed" "2+random(2)"
speed = 2+random(2);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 00D32171
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);