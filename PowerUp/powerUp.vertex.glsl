varying vec2 our_uv;
varying vec3 our_norm;
varying vec3 our_pos;
uniform vec3 lights[3];
uniform float lightCount;
uniform float time;
void main(){
    our_uv=uv;
    our_norm=normal;
    our_pos=position+normal*fract(time)*20.0;
    gl_Position = projectionMatrix * modelViewMatrix*vec4(our_pos,1.0);
}