// Handle incoming connection from server

var net_event_type = ds_map_find_value( async_load, "type" );
show_debug_message("Event type: " + string(net_event_type))
switch( net_event_type ) {
    case network_type_data:
        var buffer = ds_map_find_value( async_load, "buffer" );
        buffer_seek( buffer, buffer_seek_start, 0 );
		script_execute(HandlePacketClient, buffer)
        break;
}