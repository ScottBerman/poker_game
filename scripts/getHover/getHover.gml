var _mouseX = device_mouse_x_to_gui(0)
var _mouseY = device_mouse_y_to_gui(0)
//if (point_in_rectangle(_mouseX, _mouseY, x-width,y-height, x+width, y+height)) {
return point_in_rectangle(_mouseX, _mouseY, x, y, x + width, y + height)