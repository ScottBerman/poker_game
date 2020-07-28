/// @description Insert description here
// You can write your code in this editor
var _width = 200
var _height = 66

createButton(209, 204, _width, _height, "Take Seat", onClick) // top left
createButton(209, 604-_height, _width, _height, "Take Seat", onClick) // bottom left
createButton(1192-_width, 604-_height, _width, _height, "Take Seat", onClick) // bottom right
createButton(1192-_width, 194, _width, _height, "Take Seat", onClick) // top right