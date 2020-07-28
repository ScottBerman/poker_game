/// @description Insert description here
// You can write your code in this editor

var _hover = getHover()
var _click = _hover && mouse_check_button_pressed(mb_left)

hover = lerp(hover, _hover, 0.1)
y = lerp(y, ystart - _hover * 8, 0.1)

if (_click && script > 0) {
	script_execute(script)
}

//if (point_in_rectangle(mouse_x, mouse_y, x,y, x+width, y+height)) {
//	hover = 1
//	hoverColor = c_olive
//	if (mouse_check_button(mb_left)) {
		
//		hover = 2
//		hoverColor = c_lime
//	}
	
//} else {
//	hover = 0
//	hoverColor = c_white
//}

//if (hover == 1) {
//	if (mouse_check_button_released(mb_left)) {
//		switch(BUTTON_TYPE) {
//			case 0:
//				show_debug_message("button 0 pressed")
//				with (obj_buttonSpawner) {
//					event_user(0)
//				}
//				break
//			case 1:
//				show_debug_message("button 1 pressed")
//				with (obj_buttonSpawner) {
//					event_user(0)
//				}				
//				break
//			default:
//				break
//		}
//	}
//}