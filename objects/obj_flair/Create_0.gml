/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

float = false;
floatsin = 500;
floatdist = 10;
squishsin = 200;
squishamt = 0.005;

targetx = x;
targety = y;
spd = 0;

rotate = 0;

#region MODIFY - Hologram Property Presets
	color			= c_white;				// MODIFY
	opacity			= 1;					// MODIFY
	fade			= fadePresets.fadeUp;		// MODIFY
	reflection		= 0;					// MODIFY
	backLight		= 0;					// MODIFY
	backLightColor	= c_white;				// MODIFY
	backLightScale	= 0;					// MODIFY
	frontLight		= 0;					// MODIFY
	frontLightColor	= c_white;				// MODIFY
	frontLightScale	= 0;					// MODIFY
	static_fuzz		= 0;					// MODIFY
	glitchSpeed		= 40;					// MODIFY
	glitchSize		= 1;					// MODIFY
	glitchTimeOn	= 20;					// MODIFY
	glitchTimeOff	= 60;					// MODIFY
	artifactWidth	= 30;					// MODIFY
	artifactHeight  = 30;					// MODIFY
	artifactSpeed   = 20;					// MODIFY
	artifactOpacity = 0.8;					// MODIFY
	artifactTimeOn	= 20;					// MODIFY
	artifactTimeOff = 40;					// MODIFY
	scanLineOpacity	= 0;					// MODIFY
	scanLineWidth	= 0;					// MODIFY
	scanLineColor	= c_white;				// MODIFY
	scanLineSpeed	= 1;					// MODIFY
	scanLineDir		= 1;					// MODIFY
	
	drawHologram	= false;
#endregion