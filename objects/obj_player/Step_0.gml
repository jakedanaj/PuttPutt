/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D729DFE
/// @DnDArgument : "code" "if ( newShot & mouse_check_button(mb_left)) {$(13_10)	x_start = mouse_x;$(13_10)	y_start = mouse_y;$(13_10)	newShot = false;$(13_10)}$(13_10)if mouse_check_button_released(mb_left){$(13_10)	direction = point_direction(mouse_x,mouse_y,x_start,y_start);$(13_10)	speed = point_distance(mouse_x, mouse_y,x_start,y_start) / 5; //Calc strength based on pointer$(13_10)	newShot = true;$(13_10)}$(13_10)$(13_10)speed *=  0.9;$(13_10)if speed < 0.5 {$(13_10)	speed = 0;$(13_10)}$(13_10)if speed > 100 {$(13_10)	speed = 100;$(13_10)}"
if ( newShot & mouse_check_button(mb_left)) {
	x_start = mouse_x;
	y_start = mouse_y;
	newShot = false;
}
if mouse_check_button_released(mb_left){
	direction = point_direction(mouse_x,mouse_y,x_start,y_start);
	speed = point_distance(mouse_x, mouse_y,x_start,y_start) / 5; //Calc strength based on pointer
	newShot = true;
}

speed *=  0.9;
if speed < 0.5 {
	speed = 0;
}
if speed > 100 {
	speed = 100;
}