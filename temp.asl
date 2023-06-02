/*
!temp_reg.

+!temp_reg: cold <- .print("heat"); !heat.
+!temp_reg: hot  <- .print("cool"); !cool.
+!temp_reg: good  <- .print("good"); !good.

+!heat <-  	 increase; .wait(200); !temp_reg.
+!cool <-  	 decrease; .wait(200); !temp_reg.
+!good <-  	 restart; 
			.print("ideal temperature reached, restarting ... ");
			.wait(2000); 
			!temp_reg.
*/