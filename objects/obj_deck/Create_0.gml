/// @description Insert description here
// You can write your code in this editor
card_width = 76
card_height = 116
deck_x = 730
deck_y = 580

deckCount = 0
deckPoint = 0

for (i = 0; i < 2; i++) {
	deck[i] = 0
}

i = 0
deck[i++] = 1
deck[i++] = 2

deckCount = i

i = 0 
sprite_array[i++] = spr_cardBack
sprite_array[i++] = spr_4H
sprite_array[i++] = spr_KC

#macro CARDMAX i
i = 0