//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

void main()
{
	
	vec2 tc = v_vTexcoord;
	vec4 vc = v_vColour;
	
	//tc.x *= 2.0;
	//float resul = abs(sin(tc.y + time));
	if (abs(sin(tc.y + time)) > 0.9)
		{
		vc.a = 0.0;
		}

	if (abs(sin(tc.y + time)) < 0.01)
		{
		vc.a = 0.0;
		}
	
		vc.b += 100.0;
		vc.a *= 0.5;
	
    gl_FragColor = vc * texture2D( gm_BaseTexture, tc );
}
