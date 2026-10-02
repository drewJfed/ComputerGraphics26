 varying vec2 our_uv;
 varying vec3 our_norm;
uniform float time;
uniform vec3 defaultColor;
uniform vec3 lightLoc1,LightLoc2;
uniform vec3 LightColor1,LightColor2;
uniform mat3 transformations[3];

vec2 complexMultiply(vec2 Z,vec2 W){
    return vec2(Z.x*W.x-Z.y*W.y,Z.x*W.y+Z.y*W.x);
}

float rand(vec2 co) {
    return fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    vec3 color=vec3(1.0,1.0,1.0);
 /*   for (float u=0.0;u<1.0;u+=0.05)
      for (float v=0.0;v<1.0;v+=0.05) {
        vec3 fPixel=vec3(u,v,1.0);
        for(int i=0;i<3;i++){
          int rule=int(rand(our_uv)*3.0);
          fPixel=fPixel*transformations[rule];
          vec2 check=fPixel.xy;
          if (length(check-our_uv)<0.1) color=vec3(0.0,0.0,0.0);
        }
      }*/
    gl_FragColor=vec4(color,1.0);
 /* Mandelbrot shader 
    vec2 start=vec2(-2.0,-2.0);
    vec2 range=vec2(4.0,4.0);
    vec2 C=start+range*our_uv;
    float max=200.0;
    float counter=0.0;
    vec2 Z=vec2(0.0,0.0);
    float rad=0.0;
    while (counter<max && rad<2.0){
        //Z=vec2(Z.x*Z.x-Z.y*Z.y,2.0*Z.x*Z.y)+C;
        //Z=vec2(Z.x*Z.x*Z.x-Z.y*Z.y*Z.x-2.0*Z.x*Z.y ,Z.x*Z.x*Z.y-Z.y*Z.y*Z.y+2.0*Z.x*Z.x*Z.y);
        //Z=vec2(complexMultiply(Z,complexMultiply(Z,Z)))+C;
        Z=vec2(complexMultiply(Z,complexMultiply(Z,complexMultiply(Z,Z))))+C;
        counter++;
        rad=length(Z);
    }
    float mandColor=0.0;
    if (counter<max)
      mandColor=counter/max;
    mandColor*=20.0;
    vec3 lightLoc=vec3(10,10,10);
    vec3 color=vec3(mandColor,mandColor,mandColor);
    float cosAngle=dot(our_norm,lightLoc)/length(lightLoc);
    vec3 colorDueToLight=cosAngle*color;
    vec3 ambient=vec3(0.25,0.0,0.0);
  */
 //   gl_FragColor=vec4(vec3(rand(our_uv),0.5,0.25),1.0);
  /*  float pi=radians(180.0);
    float rad=fract(time);
    vec3 lightLoc=vec3(sin(time),cos(time),1)*10.0;
    float difangle=dot(our_norm,lightLoc)/length(lightLoc);
    vec3 light=length(difangle)*vec3(1.0,165.0/255.0,0.0);

    vec3 lightLoc2=vec3(sin(time-pi),cos(time-pi),1)*10.0;
    float difangle2=dot(our_norm,lightLoc2)/length(lightLoc2);
    vec3 light2=length(difangle2)*vec3(1.0,1.0,1.0);

    vec2 newuv=fract(our_uv*3.0);
    float dist=length(newuv-vec2(0.5,0.5));
    if (dist<rad) {
        vec3 color=vec3(newuv,0.5);
        gl_FragColor = vec4(color,1.0);
    } else {
        gl_FragColor = vec4(defaultColor,1.0);
    }
    gl_FragColor=clamp(gl_FragColor,0.0,1.0);
    gl_FragColor=vec4(light+light2+0.5*gl_FragColor.xyz,1.0);
*/
}