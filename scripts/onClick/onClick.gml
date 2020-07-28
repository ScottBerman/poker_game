var _joined_game_request = jsonrpc_create_request("join_game", obj_game.join_game_rpc_id, [seat])

var _buff = buffer_create(256, buffer_grow, 1);
buffer_write(_buff, buffer_string, _joined_game_request)
network_send_raw(obj_game.socket, _buff, buffer_tell(_buff));
show_debug_message("sent message! Seat: " + string(seat));
buffer_delete(_buff);