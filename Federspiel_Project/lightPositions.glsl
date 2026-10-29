varying vec2 our_uv;
varying vec3 our_norm;
uniform float time;
uniform vec3 defaultColor;
uniform vec3 lightLoc1,LightLoc2;
uniform vec3 LightColor1,LightColor2;
uniform mat3 transformations[3];

varying vec3 our_pos;

void main() {

    our_uv = uv;
    our_norm = normalize(normalMatrix * normal);
    our_pos = (modelViewMatrix * vec4(position, 1.0)).xyz;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);

}