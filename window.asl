
!window.

+!window: hot & not open 	<- .print("open"); .send(master, achieve, signalForOpenWindow).
+!window: tooHum & not open <- .print("open"); .send(master, achieve, signalForOpenWindow).
+!window: cold & not tooHum & open <- .print("close"); .send(master, achieve, signalForOpenWindow).
+!window: good & not tooHum & open <- .print("close"); .send(master, achieve, signalForOpenWindow).
+!window: true <- .print("wait"); !wait.

+!open <-  	 open; .wait(200); !window.
+!close <-  	 close; .wait(200); !window.
+!wait <-  	 .print("window resting"); wait; .wait(1000); !window.


//+!temp_reg: hot  <- .print("cool"); !cool.
//+!cool <-  	 decrease; .wait(200); !temp_reg.