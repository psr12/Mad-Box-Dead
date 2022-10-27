//
// Simple passthrough fragment shader
//





//blackens blank rat
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float asswipe;

void main()
{

    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	    gl_FragColor.rgb *= asswipe;

}