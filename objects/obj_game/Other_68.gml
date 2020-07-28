/// @description Insert description here
// You can write your code in this editor
var type = async_load[? "type"];
show_debug_message("Type in GMAE: " + string(type))


if (type == network_type_disconnect) {
	// Try to reconnect to the server? 
} else if (type == network_type_data) {
	var buff = async_load[? "buffer"]
	var size = buffer_get_size(buff)
	
	var read_str = ""
	var result = 0
	while (buffer_tell(buff) < size) {
		read_str = packet_chunk + buffer_read(buff, buffer_string)
	}
	
	if (buffer_peek(buff, buffer_tell(buff)-1, buffer_u8) == 0) {
		result = jsonrpc_decode(read_str, call_map, result_map)
		packet_chunk = ""
	}
	else {
		packet_chunk = read_str
	}
}