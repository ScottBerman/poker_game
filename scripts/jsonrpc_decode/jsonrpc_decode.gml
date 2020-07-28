/// @description  decodes and routes the jsonrpc
/// @argument jsonstring	The json string to decode
/// @argument call_map		The ds_queue for RPC calls
/// @argument result_map	The ds_map for results
show_debug_message("arg 0: " + string(argument0))
var jsonrpc = json_decode(argument0);
show_debug_message("jsonrpc: " + string(jsonrpc))
if (jsonrpc == -1) {
	show_debug_message("Could not decode JSON " + string(argument0));
	return;
}

var call_map = argument1;
var result_map = argument2;

if (ds_map_exists(jsonrpc, "method")) {
	// it's an RPC call
	jsonrpc_requestmap_push(jsonrpc[? "method"], jsonrpc[? "params"], jsonrpc[? "id"], call_map);
	jsonrpc[? "params"] = undefined
}
else if (ds_map_exists(jsonrpc, "result") and ds_map_exists(jsonrpc, "id")) {
	// it's a result, push onto result map
	jsonrpc_resultmap_push(jsonrpc[? "id"], jsonrpc[? "result"], result_map);
	jsonrpc[? "result"] = undefined
}
else {
	show_debug_message("Invalid JsonRPC " +  string(jsonrpc));
}

ds_map_destroy(jsonrpc)