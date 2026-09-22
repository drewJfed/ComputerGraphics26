varying vec2 our_uv;
varying vec3 our_norm;
void main(){
    our_uv=uv;
    our_norm=normal;
    vec3 our_pos=position;
    our_pos.x=2.0*our_pos.x;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(our_pos, 1.0);
//	gl_Position =  vec4(position, 1.0);
}