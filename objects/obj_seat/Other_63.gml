/// @description Insert description here
// You can write your code in this editor
var i_d = ds_map_find_value(async_load, "id");
if i_d == msg {
   if ds_map_find_value(async_load, "status") {
      if ds_map_find_value(async_load, "result") != "" {
		  
		  player = instance_create_layer(self.x, self.y, "Instances", obj_player)
		  player.game_ptr = self.game_ptr
		  chips = ds_map_find_value(async_load, "result")
		  player.chips = chips
		  player_count = array_length_1d(self.game_ptr.players_array)
		  if player_count == 0 {
			  player.is_leader = true
		  } else {
			  player.is_leader = false
		  }
		  self.game_ptr.players_array[player_count] = player
		  player.entered_room = true
		  
		  occupied = true
	  } 
   } else {
	   occupied = false
	   sprite_index = spr_takeSeat
   }
}