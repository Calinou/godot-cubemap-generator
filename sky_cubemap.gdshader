shader_type sky;

uniform samplerCube source_panorama : filter_linear, source_color, hint_default_black;
uniform float exposure : hint_range(0, 128) = 1.0;

void sky() {
	vec3 eyedir = vec3(EYEDIR.x, EYEDIR.y, EYEDIR.z);
	COLOR = texture(source_panorama, eyedir).rgb * exposure;
}
