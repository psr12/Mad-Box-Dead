//UpdateOptionsIndex();	// REMOVE W/MENU
//UpdateOptionsValue();	// REMOVE W/MENU

#region Scan Line -- DO NOT MODIFY
	var spr	 = sprite_index;
	var spriteHeight	= sprite_get_bbox_bottom(spr) + 1 - sprite_get_bbox_top(spr);
	var sprHeight		= sprite_get_height(spr); 
	
	// Scan line is going up
	if (scanLineDir == 1) {
		scanIteration += scanLineSpeed; // increment
		
		// If scan line has gone outside the visible part of the sprite, wrap to bottom
		if (scanIteration > sprHeight - sprite_get_bbox_bottom(spr) + spriteHeight + scanLineWidth) {
			scanIteration = sprHeight - sprite_get_bbox_bottom(spr) - scanLineWidth;
		}
	}
	// Scan line is going down
	else {
		scanIteration -= scanLineSpeed; // decrement
		
		// If scan line has gone outside the visible part of the sprite, wrap to top
		if (scanIteration < sprHeight - sprite_get_bbox_bottom(spr) - scanLineWidth) {
			scanIteration = sprHeight - sprite_get_bbox_bottom(spr) + spriteHeight + scanLineWidth;
		}
	}

	artifactIter++;
#endregion

#region Artifact Glitch -- DO NOT MODIFY
if (alarm[2] <= 0 && alarm[3] <= 0) {
	alarm[2] = artifactTimeOff;
}
#endregion

#region Line Skip Glitch -- DO NOT MODIFY
// modifies and increments the variables used for the line skipping glitch
// Set delay
if (alarm[0] <= 0 && alarm[1] <= 0) { // neither alarms are triggering
	alarm[0] = glitchTimeOff;
}

if (glitchSpeed > 0) {
	if (alarm[0] <= 0) { // alarm 0 is not triggering
		if (Chance(glitchSpeed)) {
			skip += irandom_range(-glitchSize, glitchSize);
	
			if (skip < 0)
				skip = 0;
		
			if (skip > glitchSize)
				skip = glitchSize;
		}
	}
	else {
		if (skip > 0) {
			skip--;	
		}
	}
}
#endregion