/// @description Draw Menu -- REMOVE W/MENU
/*
#region REMOVE W/MENU - Draw Menu Options
	draw_text(0,  0,	"FPS: "					+ string(fps_real));
	draw_text(30, 15,	"color: "				+ string(color));
	draw_text(30, 30,	"opacity: "				+ string(opacity));
	draw_text(30, 45,	"fade: "				+ string(fade));
	draw_text(30, 60,	"reflection: "			+ string(reflection));
	draw_text(30, 75,	"back light opacity: "	+ string(backLight));
	draw_text(30, 90,	"back light color: "	+ string(backLightColor));
	draw_text(30, 105,	"back light scale: "	+ string(backLightScale));
	draw_text(30, 120,	"front light opacity: "	+ string(frontLight));
	draw_text(30, 135,	"front light color: "	+ string(frontLightColor));
	draw_text(30, 150,	"front light scale: "	+ string(frontLightScale));
	draw_text(30, 165,	"static_fuzz: "			+ string(static_fuzz));
	draw_text(30, 180,	"artifact max width: "	+ string(artifactWidth));
	draw_text(30, 195,	"artifact max height: "	+ string(artifactHeight));
	draw_text(30, 210,	"artifact speed: "		+ string(artifactSpeed));
	draw_text(30, 225,	"artifact opacity: "	+ string(artifactOpacity));
	draw_text(30, 240,	"artifact time on: "	+ string(artifactTimeOn));
	draw_text(30, 255,	"artifact time off: "	+ string(artifactTimeOff));
	draw_text(30, 270,	"glitch speed: "		+ string(glitchSpeed));
	draw_text(30, 285,	"glitch size: "			+ string(glitchSize));
	draw_text(30, 300,	"glitch time on: "		+ string(glitchTimeOn));
	draw_text(30, 315,	"glitch time off: "		+ string(glitchTimeOff));
	draw_text(30, 330,	"scan line opacity: "	+ string(scanLineOpacity));
	draw_text(30, 345,	"scan line width: "		+ string(scanLineWidth));
	draw_text(30, 360,	"scan line color: "		+ string(scanLineColor));
	draw_text(30, 375,	"scan line speed: "		+ string(scanLineSpeed));
	draw_text(30, 390,	"scan line dir: "		+ string(scanLineDir));

	draw_text(10, 15 + (15 * optionsIndex), ">");
#endregion