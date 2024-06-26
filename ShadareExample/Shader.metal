//
//  Shader.metal
//  ShadareExample
//
//  Created by Ammar Alsanani on 26/06/2024.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 recolor(float2 position, half4 color){

    return half4(position.x/position.y , 0 ,position.y/position.x , color.a);
}

[[ stitchable ]] half4 reletiveRecolor(float2 position, half4 color, float2 size){
    return half4(color.r, color.g, color.b , color.a * (position.x / size.x));
}

[[ stitchable ]] float2 wave(float2 position, float time,float speed , float strength , float smoothing) {
    position.y += sin(time * speed + position.y / strength) * smoothing;
    return position;
}
