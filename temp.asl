
!temp_reg.

+!temp_reg: cold <- .print("heat"); !heat.
+!temp_reg: good  <- .print("good"); !wait.
+!temp_reg: not good  <- .print("resting"); !wait.

+!heat <-  	 increase; .print("Increase"); .wait(200); !temp_reg.
+!wait <-  	 .print("resting"); .wait(1000); !temp_reg.


//+!temp_reg: hot  <- .print("cool"); !cool.
//+!cool <-  	 decrease; .wait(200); !temp_reg.