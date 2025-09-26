/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34A04E8B
/// @DnDArgument : "expr" "obj_Player.image_angle"
/// @DnDArgument : "var" "angle"
angle = obj_Player.image_angle;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0D7D2C2D
/// @DnDArgument : "angle" "angle"
image_angle = angle;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 338D8ACA
/// @DnDArgument : "direction" "obj_Player.direction"
direction = obj_Player.direction;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7065456E
/// @DnDArgument : "speed" "obj_Player.playerSpeed+5"
speed = obj_Player.playerSpeed+5;