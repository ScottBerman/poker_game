var _x = argument[0]
var _y = argument[1]
var _width = argument[2]
var _height = argument[3]
var _text = argument[4]
var _seat = argument[5]
var _script = argument[6]

var _button = instance_create_layer(_x, _y, "Instances", obj_button)

with (_button) {
	width = _width
	height = _height
	text = _text
	script = _script
	seat = _seat
}

return _button