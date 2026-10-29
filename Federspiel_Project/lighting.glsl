varying vec2 our_uv;
varying vec3 our_norm;
uniform float time;
uniform vec3 defaultColor;
uniform vec3 lightLoc1,LightLoc2;
uniform vec3 LightColor1,LightColor2;

varying vec3 our_pos;

void main() {

    

    vec3 norm = normalize(our_norm); // makes a vector of length 1

    vec3 dir = normalize(lightLoc1 - our_pos);

    float diff = max(dot(norm, dir), 0.0);
    vec3 diffuse = diff * LightColor1;

    vec3 color= diffuse * defaultColor;
    gl_FragColor=vec4(color,1.0);
    
}


// vec2 complexMultiply(vec2 Z,vec2 W){
//     return vec2(Z.x*W.x-Z.y*W.y,Z.x*W.y+Z.y*W.x);
// }

// float rand(vec2 co) {
//     return fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453);
// }
/*
void main() {
    vec3 color=vec3(1.0,1.0,1.0);
    gl_FragColor=vec4(color,1.0);

    our_uv=uv;
    our_norm=normal;
    our_pos=position;
    our_pos=(cos(fract(time)*6.28)+1.0)*normal/2.0+our_pos;
    // our_pos.x=2.0*our_pos.x;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(our_pos, 1.0);
    //	gl_Position =  vec4(position, 1.0);
}
*/
