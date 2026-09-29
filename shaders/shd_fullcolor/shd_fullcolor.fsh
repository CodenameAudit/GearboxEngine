varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec3 darkest;
uniform vec3 lightest;
//one of my friends gave me this shader idk who made this 
void main()
{
	vec4 tex = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	vec3 dark = darkest;
	vec3 light = lightest;
	dark = dark;
	light = light;
	if (distance(tex, vec4(0, 0, 0, tex.a)) <= 0.2) {
		gl_FragColor.rgb = vec3(dark.r, dark.g, dark.b);
	}
	else {
		gl_FragColor.rgb = vec3(light.r, light.g, light.b);
	}
	gl_FragColor.a = tex.a;
}
