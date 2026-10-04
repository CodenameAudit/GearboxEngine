state = enemyStates.walk;
movespeed = 0;
xscale = 1;
idleSprite = spr_null;
walkSprite = spr_slimemove;
fallSprite = spr_null;
landSprite = spr_null;
turnSprite = spr_slimemove;
stunSprite = spr_slimestun;
grabbedSprite = spr_null;
scaredSprite = spr_slime_scared;
deadSprite = spr_slimedead
scareBuffer = 0;
sprite_index = spr_null;
mask_index = spr_player_mask;
scr_collision_init();