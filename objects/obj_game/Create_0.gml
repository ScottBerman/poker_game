/// @description Insert description here
// You can write your code in this editor

pos_x_arr = [1192, 209, 209, 1192, 440, 840, 440, 840]
pos_y_arr = [604, 204, 604, 204, 120, 120, 687, 687]
spr_arr = [sprite1, sprite2, sprite3, sprite4, sprite1, sprite2, sprite3, sprite4]

enum PLAYER_STATUS {
	ACTIVE,
	SITTING_OUT,
	DISCONNECTED,
	BANKRUPT
}

enum PLAYER_ROLE {
	PARTICIPANT,
	DEALER,
	SMALL_BLIND,
	BIG_BLIND
}


num_players_max = 8
players_arr = ds_list_create()
for (i = 0; i < num_players_max; i++) {
	seat_taken_arr[i] = false
}

seat_button_arr = []

packet_chunk = ""
table_id = 1
call_map = ds_map_create()
result_map = ds_map_create()
randomize()

server_ip = "127.0.0.1"
server_port = "9888"

is_server = true

socket = network_create_socket(network_socket_tcp)
server = network_connect_raw(socket, server_ip, server_port)
if (server < 0) {
	show_error("Could not connect to server.", false)
} else {
	show_debug_message("CONNECTED!");
}

var _buff = buffer_create(256, buffer_grow, 1);
join_room_rpc_id = jsonrpc_uuid()
join_game_rpc_id = jsonrpc_uuid()
player_id = jsonrpc_uuid() // in the future this will just be the player_id
var _room_info_request = jsonrpc_create_request("get_game_info", join_room_rpc_id, [table_id, player_id])
buffer_write(_buff, buffer_string, _room_info_request)
network_send_raw(socket, _buff, buffer_tell(_buff));
show_debug_message("sent message!");
buffer_delete(_buff);