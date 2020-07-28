/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_text(100, 200, string(mouse_x) + " " + string(mouse_y))

for (i = 0; i < deckCount; i++) {
	if (deck[i] > 0) {
		draw_sprite(sprite_array[deck[i]], -1, deck_x + i*20, deck_y + i*20)
	}
}