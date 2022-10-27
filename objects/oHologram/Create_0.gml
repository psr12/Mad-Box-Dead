#region MODIFY - Hologram Property Presets
	color			= c_white;				// MODIFY
	opacity			= 0.9;					// MODIFY
	fade			= fadePresets.none;		// MODIFY
	reflection		= 0;					// MODIFY
	backLight		= 0;					// MODIFY
	backLightColor	= c_white;				// MODIFY
	backLightScale	= 0;					// MODIFY
	frontLight		= 0;					// MODIFY
	frontLightColor	= c_white;				// MODIFY
	frontLightScale	= 0;					// MODIFY
	static_fuzz		= 0;					// MODIFY
	glitchSpeed		= 0;					// MODIFY
	glitchSize		= 0;					// MODIFY
	glitchTimeOn	= 0;					// MODIFY
	glitchTimeOff	= 0;					// MODIFY
	artifactWidth	= 0;					// MODIFY
	artifactHeight  = 0;					// MODIFY
	artifactSpeed   = 0;					// MODIFY
	artifactOpacity = 0;					// MODIFY
	artifactTimeOn	= 0;					// MODIFY
	artifactTimeOff = 0;					// MODIFY
	scanLineOpacity	= 0;					// MODIFY
	scanLineWidth	= 0;					// MODIFY
	scanLineColor	= c_white;				// MODIFY
	scanLineSpeed	= 1;					// MODIFY
	scanLineDir		= 1;					// MODIFY
	
	drawHologram	= true;
#endregion

#region DO NOT MODIFY - Hologram Propertes
	skip			= 0;	// DO NOT MODIFY
	scanIteration	= 0;	// DO NOT MODIFY
	artifactIter	= 0;	// DO NOT MODIFY
	artL			= 0;	// DO NOT MODIFY
	artT			= 0;	// DO NOT MODIFY
	artW			= 0;	// DO NOT MODIFY
	artH			= 0;	// DO NOT MODIFY
	artX			= 0;	// DO NOT MODIFY
	artY			= 0;	// DO NOT MODIFY

	alarm[0]		= -1;	// DO NOT MODIFY
	alarm[1]		= -1;	// DO NOT MODIFY
	alarm[2]		= 1;	// DO NOT MODIFY
	alarm[3]		= -1;	// DO NOT MODIFY
		
	enum fadePresets {
		none, fadeUp, fadeDown
	}
#endregion

#region CAN CHANGE - Sprite Properties
	//image_speed		= 0.7;			// sprite animation speed
	//image_xscale	= 1;			// sprite direction facing
#endregion

/*
#region REMOVE W/MENU - Menu Navigation
	enum opt {
		color, opacity, fade, reflection, backLight, backLightColor, backLightScale, 
		frontLight, frontLightColor, frontLightScale, static_fuzz,
		artifactWidth, artifactHeight, artifactSpeed, artifactOpacity, artifactTimeOn, artifactTimeOff,
		glitchSpeed, glitchSize, glitchTimeOn, glitchTimeOff, 
		scanOpacity, scanWidth, scanColor, scanSpeed, scanDir,
	}
	nOptions = 26;
	optionsIndex = 0;
#endregion