/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7090AC6C
/// @DnDArgument : "code" "if speed < 1 {$(13_10)	show_message("YOU WIN!");$(13_10)	game_restart();$(13_10)}"
if speed < 1 {
	show_message("YOU WIN!");
	game_restart();
}