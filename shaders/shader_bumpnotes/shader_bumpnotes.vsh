//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float bumpnoteheight;
uniform float bumpnotedist;


void main()
{
	vec3 pissition = in_Position;
	
	float random = sin(pissition.x);
	float whoops = bumpnoteheight * 0.4;
	
	pissition.y -= 683.0 / abs( pissition.x - 683.0) * whoops;
	
	
	//pissition.y -= abs(683.0 - bumpnoteheight);
	
    vec4 object_space_pos = vec4( pissition.xyz, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
