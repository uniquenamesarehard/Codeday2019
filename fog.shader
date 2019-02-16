shader_type canvas_item;

uniform vec3 color = vec3(0.5, 0.0, 0.13);

float rand(vec2 coord){
	return dot(coord, vec2(10, 10));
}

void fragment(){
	COLOR = vec4(color, rand(UV));
}