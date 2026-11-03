varying vec2 our_uv;
varying vec3 our_norm;
uniform float time;

void main() {
    float t=1.0-fract(time);
    vec3 green=vec3(0.25,1.0,0.25);
    vec3 blue=vec3(0.25,0.25,1.0);
    vec3 color=green*t+(1.0-t)*blue;
    gl_FragColor=vec4(color,t);
}