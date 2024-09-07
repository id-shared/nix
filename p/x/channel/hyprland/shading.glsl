#version 320 es
precision mediump float;
uniform sampler2D tex;
out vec4 fragcolor;
in vec2 v_texcoord;

const float r = +1.0 * (3.0 / 3.0);
const float g = +1.0 * (2.0 / 3.0);
const float b = +1.0 * (1.0 / 3.0);

void main () {
  vec4 color = texture (tex, v_texcoord);

  color.rgb = color.rgb * vec3 (
    r,
    g,
    b
  );

  fragcolor = color;
}
