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

function sh_goto_room(args) {
	var _room = asset_get_index(args[1]);
	var _door = args[2];

	if _room != -4 {
		with (instance_create_depth(x, y, 0, obj_fadeout)) {
			targetRoom = _room;
			targetDoor = _door;
			savedXscale = obj_player.xscale;
		}
	}
}

function meta_goto_room() {
	return {
		description: "Go to any room you want!",
		arguments: ["targetRoom", "targetDoor"],
		argumentDescriptions: [
			"The room you're going to",
			"The door you're going to"
		]
	}
}