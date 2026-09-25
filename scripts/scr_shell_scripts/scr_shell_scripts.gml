//All the bullshit goes here
function sh_noclip() {
	with (obj_player) {
		state = states.noclip;
		sprite_index = spr_player_idle;
		exit;
	}
}
function meta_noclip() {
	return {
		description: "Allows the player to noclip through collison, helps getting players out of softlocks"
	}
}

function sh_room_goto(args) {
	var _room = asset_get_index(args[1]);
	var _door = args[2];
	
	if _room == 3 {
		scr_gotoRoom(_room);
		global.targetDoor = _door;
	}
}

function meta_room_goto() {
	return {
		description: "Go to any room you want!",
		arguments: ["targetRoom", "targetDoor"],
		argumentDescriptions: [
			"The room you're going to",
			"The door you're going to"
		]
	}
}
