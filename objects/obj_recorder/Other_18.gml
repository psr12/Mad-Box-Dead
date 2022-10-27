/// @description end level, show score


		state=64
		if maxcombo < combo maxcombo = combo //incase of full combo
			//freeze everyone, except mad rat
			//if instance_exists(obj_MadSquare) {obj_MadSquare.time = 0; }
			if instance_exists(obj_onbeat)	{obj_onbeat.time = 0;}
			spitch = 1; //song pitch
			
			with obj_cameraman {if camlock camlock = false;
				}