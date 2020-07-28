//if (array_length_1d(players_array) >= 2 && !hand_in_progress && )
if (jsonrpc_resultmap_exists(join_room_rpc_id, result_map)) {
	var _setup_game_response = jsonrpc_resultmap_pop(join_room_rpc_id, result_map)
	show_debug_message("setup_game response: " + string(_setup_game_response))
	setup_game(_setup_game_response, player_id)
} 

else if (jsonrpc_resultmap_exists(join_game_rpc_id, result_map)) {
	var _join_game_response = jsonrpc_resultmap_pop(join_game_rpc_id, result_map)
	show_debug_message("join_game response: " + string(_join_game_response))
	if (_join_game_response[? "join_successful"]) {
		var _player_info = _join_game_response[? "player_info"]
		var _is_self = true
		//join_table(_player_info)
		add_player(_player_info, _is_self)
	} else {
		// DISPLAY ERROR MESSAGE TO USER THAT THEY WEREN'T ABLE TO SUCCESSFULLY SIT AT TABLE
	}
}

if (jsonrpc_requestmap_exists("new_player_joined", call_map)) {
	var _new_player_joined_request = jsonrpc_requestmap_pop("new_player_joined", call_map)
	var _player_info = _new_player_joined_request[? "params"]
	var _is_self = false
	add_player(_player_info, _is_self)
}
