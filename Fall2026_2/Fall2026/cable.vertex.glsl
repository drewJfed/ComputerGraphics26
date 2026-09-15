varying vec2 our_uv;
varying vec3 our_norm;
void main(){
    our_uv=uv;
    our_norm=normal;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
//	gl_Position =  vec4(position, 1.0);
}