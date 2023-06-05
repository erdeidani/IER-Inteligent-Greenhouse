
!window.

+!window: hot & not open 	<- .print("open"); !open.
+!window: tooHum & not open <- .print("open"); !open.
+!window: cold & not tooHum & open <- .print("close"); !close.
+!window: good & not tooHum & open <- .print("close"); !close.
+!window: true <- .print("wait"); !wait.

+!open <-  	 open; .wait(200); !window.
+!close <-  	 close; .wait(200); !window.
+!wait <-  	 .print("window resting"); wait; .wait(1000); !window.


//+!temp_reg: hot  <- .print("cool"); !cool.
//+!cool <-  	 decrease; .wait(200); !temp_reg.