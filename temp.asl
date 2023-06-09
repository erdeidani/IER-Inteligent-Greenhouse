data(Temp, Water, Humidity).
open(Open).
!temp_reg.

+!temp_reg: data(Temp, Water, Humidity) & Temp < 22 <- .print("Heat"); 
.send(master, achieve, signalForTemp).

+!temp_reg: data(Temp, Water, Humidity) & Temp >= 22 & Temp <=25  <- .print("Good"); !wait.

+!temp_reg: data(Temp, Water, Humidity) & Temp > 25 <- .print("Resting"); !wait.

+!heat <-  	 increase; .print("Increase"); .wait(200); !temp_reg.
+!wait <-  	 .print("Resting"); .wait(1000); !temp_reg.
