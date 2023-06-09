
!temp_reg.

+!temp_reg: cold <- .print("Heat"); .send(master, achieve, signalForTemp).
+!temp_reg: good  <- .print("Good"); !wait.
+!temp_reg: not good  <- .print("Resting"); !wait.

+!heat <-  	 increase; .print("Increase"); .wait(200); !temp_reg.
+!wait <-  	 .print("Resting"); .wait(1000); !temp_reg.


//+!temp_reg: hot  <- .print("cool"); !cool.
//+!cool <-  	 decrease; .wait(200); !temp_reg.