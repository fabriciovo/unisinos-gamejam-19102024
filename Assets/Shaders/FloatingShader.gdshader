shader_type canvas_item;

uniform float float_speed : hint_range(0.0, 10.0) = 2.0;
uniform float float_height : hint_range(0.0, 10.0) = 1.0;

void fragment() {
    vec4 original_color = texture(TEXTURE, UV);
    COLOR = original_color;
}

void vertex() {
    // Calcule o deslocamento de flutuação usando uma onda senoidal
    float offset = sin(TIME * float_speed) * float_height;

    // Aplique o deslocamento à posição Y do vértice
    VERTEX.y += offset;
}