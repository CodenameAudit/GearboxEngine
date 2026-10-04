if (global.debugMode) {
	draw_text(x, y - 100, self.object_index);
	draw_text(x, y - 80, self.hsp);
	draw_text(x, y - 60, self.vsp);
	draw_text(x, y - 40, self.grounded);
	draw_text(x, y - 20, self.state);
}
draw_self();