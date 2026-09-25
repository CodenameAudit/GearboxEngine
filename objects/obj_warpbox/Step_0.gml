scr_utilty();
var _transitionSpr = [spr_player_pizzaboxdown, spr_player_pizzaboxup]

with (obj_player) {
	if (keyboard_check_direct(vk_up) && place_meeting(x, y - 10, other) && !array_contains(_transitionSpr, sprite_index) && other.image_yscale == -1) {
		state = states.enterWarp
		x = other.x + 42;
		targetRoom = other.targetRoom
		global.targetDoor = other.targetDoor
		image_index = 0;
		sprite_index = spr_player_pizzaboxup;
		exit;
	}
	else if (keyboard_check_direct(vk_down) && place_meeting(x, y + 10, other) && !array_contains(_transitionSpr, sprite_index) && other.image_yscale == 1) {
		state = states.enterWarp
		x = other.x + 42;
		targetRoom = other.targetRoom
		global.targetDoor = other.targetDoor
		image_index = 0;
		sprite_index = spr_player_pizzaboxdown;
		exit;
	}
}