
!temp_reg.

+!temp_reg: cold <- .print("heat"); !heat.
+!temp_reg: hot  <- .print("cool"); !cool.
+!temp_reg: good  <- .print("good"); !good.

+!heat <-  	 increase; .wait(200); !temp_reg.
+!cool <-  	 decrease; .wait(200); !temp_reg.
+!good <-  	 .print("ideal temperature, resting"); .wait(1000); restart; !temp_reg.