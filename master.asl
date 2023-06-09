data(Temp, Water, Humidity).
open(Open).
					
+!signalForWater  <- 	.print("Wants to water"); 
									.send(water, achieve, water).
					
+!signalForNoWater <- 	.print("No need for watering");
									.send(water, achieve, moist).
					
+!signalForTemp <- .print("Wants to increase temperature");
				.send(temp, achieve, heat).	
				
+!signalForOpenWindow <- .print("Wants to open window");
					.send(window, achieve, open).
					
+!signalForCloseWindow <- .print("Wants to close window");
						.send(window, achieve, close).