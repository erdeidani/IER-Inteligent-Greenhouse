
/*
!water_regulation.

+!water_regulation: cold <- .print("heat"); !heat.
+!water_regulation: hot  <- .print("cool"); !cool.
+!water_regulation: good  <- .print("good"); !good.

+!heat <-  	 increase; .wait(200); !temp_reg.
+!cool <-  	 decrease; .wait(200); !temp_reg.
+!good <-  	 restart; 
			.print("ideal temperature reached, restarting ... ");
			.wait(2000); 
			!temp_reg.
*/