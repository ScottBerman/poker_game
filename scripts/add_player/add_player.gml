var _player_info = argument[0]
var _is_self = argument[1]

var _position = _player_info[? "seat"]


if (_is_self) {
	instance_destroy(obj_button)
} else {
	instance_destroy(seat_button_arr[_position])
}


var _player_obj = instance_create_layer(pos_x_arr[_position], pos_y_arr[_position],"Instances", obj_player)
// hand_in_progress?
// player sitting out or playing?
// player status can equal 
with (_player_obj) {
	position = _position
	chips = _player_info[? "chips"]
	//name = _cur_player[? "name"]
	player_id = _player_info[? "id"]
	is_self = _is_self
	sprite_index = other.spr_arr[_position]
}