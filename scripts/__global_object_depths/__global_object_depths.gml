function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // TMC_FrameSkip_v1_obj
	global.__objectDepths[1] = 0; // TMC_FrameSkip_v2_obj
	global.__objectDepths[2] = -10000000; // TMC_FrameSkip_v2_Static_obj
	global.__objectDepths[3] = 0; // TMC_Frame_Skip_Demo_Tst_obj
	global.__objectDepths[4] = -100; // TMC_Frame_Skip_Moving_Test_Obj
	global.__objectDepths[5] = 0; // TMC_Frame_Skip_demo_v2_Static_obj
	global.__objectDepths[6] = 0; // TMC_Frame_Skip_demo_v2_obj
	global.__objectDepths[7] = 0; // TMC_Frame_Skip_demo_v1_obj


	global.__objectNames[0] = "TMC_FrameSkip_v1_obj";
	global.__objectNames[1] = "TMC_FrameSkip_v2_obj";
	global.__objectNames[2] = "TMC_FrameSkip_v2_Static_obj";
	global.__objectNames[3] = "TMC_Frame_Skip_Demo_Tst_obj";
	global.__objectNames[4] = "TMC_Frame_Skip_Moving_Test_Obj";
	global.__objectNames[5] = "TMC_Frame_Skip_demo_v2_Static_obj";
	global.__objectNames[6] = "TMC_Frame_Skip_demo_v2_obj";
	global.__objectNames[7] = "TMC_Frame_Skip_demo_v1_obj";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
