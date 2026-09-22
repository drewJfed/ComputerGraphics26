 varying vec2 our_uv;
 varying vec3 our_norm;
uniform float time;
uniform vec3 defaultColor;
uniform vec3 lightLoc1,LightLoc2;
uniform vec3 LightColor1,LightColor2;
void main() {
    float pi=radians(180.0);
    float rad=fract(time);
    vec3 lightLoc=vec3(sin(time),cos(time),1)*10.0;
    float difangle=dot(our_norm,lightLoc)/length(lightLoc);
    vec3 light=length(difangle)*vec3(1.0,165.0/255.0,0.0);

    vec3 lightLoc2=vec3(sin(time-pi),cos(time-pi),1)*10.0;
    float difangle2=dot(our_norm,lightLoc2)/length(lightLoc2);
    vec3 light2=length(difangle2)*vec3(1.0,0.0,1.0);

    vec2 newuv=fract(our_uv*3.0);
    float dist=length(newuv-vec2(0.5,0.5));
    if (dist<rad) {
        vec3 color=vec3(newuv,0.5);
        gl_FragColor = vec4(color,1.0);
    } else {
        gl_FragColor = vec4(defaultColor,1.0);
    }
    gl_FragColor=clamp(gl_FragColor,0.0,1.0);
    gl_FragColor=vec4(light+light2/*+0.5*gl_FragColor.xyz*/,1.0);
}