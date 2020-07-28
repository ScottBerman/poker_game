/// @description Insert description here
// You can write your code in this editor
hoverValue = 0
keyboardToggle = false

var button_call = instance_create_depth(room_width/2, room_height/2, -4096, obj_button)
button_call.BUTTON_TYPE = 0
button_call.hoverValue = 1

var button_fold = instance_create_depth(room_width/2+240, room_height/2, -4096, obj_button)
button_fold.BUTTON_TYPE = 1
button_fold.hoverValue = 3

