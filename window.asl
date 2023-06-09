data(Temp, Water, Humidity).
open(Open).
!window.

+!data: true <- .print("Temp , Water, Humidity , open === ", Temp, Water, Humidity, Open).

+!window: data(Temp, Water, Humidity)  & Temp > 25  	<- 
.print("Temp , Water, Humidity , open1 === ", Temp, Water, Humidity, Open );
.send(master, achieve, signalForOpenWindow).

+!window: data(Temp, Water, Humidity) & open(Open) & Humidity > 50 & Open = false <- 
.print("Temp , Water, Humidity , open2 === ", Temp, Water, Humidity, Open );
.send(master, achieve, signalForOpenWindow).

+!window: data(Temp, Water, Humidity) & open(Open) & Temp < 22 & Humidity <= 50 & Open = true <- 
.print("Temp , Water, Humidity , open3 === ", Temp, Water, Humidity, Open ); 
.send(master, achieve, signalForCloseWindow).

+!window: data(Temp, Water, Humidity) & open(Open) & Temp >= 22 & Temp <= 25 & Humidity <= 50 & Open = true <- 
.print("Temp , Water, Humidity , open4 === ", Temp, Water, Humidity, Open ); 
.send(master, achieve, signalForCloseWindow).

+!window: true <- .print("wait"); !wait.

+!open <-  	 open; .wait(200); !window.
+!close <-  	 close; .wait(200); !window.
+!wait <-  	 .print("window resting"); wait; .wait(1000); !window.


//+!temp_reg: hot  <- .print("cool"); !cool.
//+!cool <-  	 decrease; .wait(200); !temp_reg.