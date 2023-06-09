data(Temp, Water, Humidity).
open(Open).
!window.

+!window: data(Temp, Water, Humidity) & open(Open) & Temp < 22 & Humidity <= 50 <- 
	.print("A) temp: ", Temp," water: ", Water," humidity: ", Humidity, " open: ", Open); 
	.send(master, achieve, signalForCloseWindow).

+!window: data(Temp, Water, Humidity) & open(Open) & Temp >= 22 & Temp <= 25 & Humidity <= 50 <- 
	.print("B) temp: ", Temp," water: ", Water," humidity: ", Humidity, " open: ", Open); 
	!wait .

+!window: data(Temp, Water, Humidity) & open(Open) & Humidity > 50  <- 
	.print("D) temp: ", Temp," water: ", Water," humidity: ", Humidity, " open: ", Open);
	.send(master, achieve, signalForOpenWindow).

+!window: data(Temp, Water, Humidity) & Temp > 25	<- 
	.print("C) temp: ", Temp," water: ", Water," humidity: ", Humidity, " open: ", Open);
	.send(master, achieve, signalForOpenWindow).

+!window: data(Temp, Water, Humidity) & open(Open) <- .print("wait");
	.print("E) temp: ", Temp," water: ", Water," humidity: ", Humidity, " open: ", Open); 
	!wait.

+!open <-  	 open; .wait(200); !window.
+!close <-  	 close; .wait(200); !window.
+!wait <-  	 .print("window resting"); wait; .wait(1000); !window.
