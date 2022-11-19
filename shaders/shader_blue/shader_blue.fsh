//
// Simple passthrough fragment shader
//


varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{

    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	    gl_FragColor.r = 0.0;
	    gl_FragColor.g = 133.0;
	    gl_FragColor.b = 255.0;
	    gl_FragColor.a *= 0.5;
		
}