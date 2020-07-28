var _game_info = argument[0]
var _player_id = argument[1]

// 1. iterate through players in game and create player objects
var _players_arr = _game_info[? "players"]
for (var _i = 0; _i < ds_list_size(_players_arr); _i++) {
	show_debug_message("Found a player, setting them up")
	var _cur_player = _players_arr[| _i]
	var _position = _cur_player[? "seat"]
	var _player_obj = instance_create_layer(pos_x_arr[_position], pos_y_arr[_position],"Instances", obj_player)
	// hand_in_progress?
	// player sitting out or playing?
	// player status can equal 
	with (_player_obj) {
		show_debug_message("Creating sprite and such for new player.")
		position = _position
		chips = _cur_player[? "chips"]
		name = _cur_player[? "name"]
		player_id = _cur_player[? "id"]
		is_self = player_id == _player_id // not needed because player is not in game yet.
		sprite_index = other.spr_arr[_position]
	}
}

// 2. Iterate through player objects and add them to the players_arr and update seat_taken_arr
//    Not adding the self player here as they have not sat down.
with(obj_player) {
	show_debug_message("Iterating through player objects")
	if (obj_player.player_id != _player_id) {		
		show_debug_message("Updating seats: " + string(obj_player.position) + " for found player object")
		ds_list_add(other.players_arr, obj_player)
		other.seat_taken_arr[obj_player.position] = true
		show_debug_message("after updating, seat is taken: " + string(other.seat_taken_arr[1]))
	}
}



// 3. Create "Take Seat" buttons for all remaining available seats.
var _width = 200
var _height = 66
var _button_text = "Sit Here"
for (_i = 0; _i < num_players_max; _i++) {
	show_debug_message("Seat: " + string(_i) + " is taken: " + string(seat_taken_arr[_i]))
	if (!seat_taken_arr[_i]) {
		var _button = createButton(pos_x_arr[_i], pos_y_arr[_i], _width, _height, _button_text, _i, onClick)
		seat_button_arr[_i] = _button
	} else {
		seat_button_arr[_i] = true
	}
}