varying vec2 v_texcoord;

 vec2 resolution = vec2(1370.0, 600.0);
 float blur_amount = 0.8;

void main()
{ 
float blurSize = 1.0/resolution.y * blur_amount;

   vec4 sum = vec4(0.0);
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y- 4.0*blurSize)) * 0.05;
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y- 3.0*blurSize)) * 0.09;
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y - 2.0*blurSize)) * 0.12;
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y - blurSize)) * 0.15;
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y)) * 0.16;
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y + blurSize)) * 0.15;
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y + 2.0*blurSize)) * 0.12;
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y + 3.0*blurSize)) * 0.09;
   sum += texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y + 4.0*blurSize)) * 0.05;
   gl_FragColor = sum;
}
