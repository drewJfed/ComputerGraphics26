 varying vec2 our_uv;
 varying vec3 our_norm;
 varying vec3 our_pos;
uniform float time;
uniform vec3 lights[10];
uniform vec3 lightColors[10];
uniform vec3 spheres[10];
//uniform int lightCount;
//uniform int sphereCount;

void main() {
    //vec3 color=vec3(1.0,0.0,1.0);

    vec3 dir = (lights[0] - our_pos);

    float angle = dot(our_norm, dir) / length(dir);

    gl_FragColor=vec4(lightColors[0] * angle,0.25);
}