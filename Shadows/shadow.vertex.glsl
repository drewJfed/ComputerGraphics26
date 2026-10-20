varying vec2 our_uv;
varying vec3 our_norm;
varying vec3 our_pos;
uniform float time;
void main(){
    our_uv=uv;
    our_norm=normal;
    our_pos=position;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(our_pos, 1.0);
}