// Pinging Server

buffer_seek( buffer, buffer_seek_start, 1 );
buffer_write( buffer, buffer_u8, 0 );
buffer_write( buffer, buffer_s32, current_time );
show_debug_message("Buffer contents at 1: " + string(buffer_peek(buffer, 1, buffer_u8)))
show_debug_message("Buffer contents at 2: " + string(buffer_peek(buffer, 2, buffer_s32)))
show_debug_message( "current time: " + string(current_time) );
show_debug_message("Buffer position: " + string(buffer_tell(buffer)))
result = network_send_raw( socket, buffer, buffer_tell(buffer));
alarm[0] = room_speed;