
!water_regulation.

+!water_regulation: dry <- .print("water"); .send(master, achieve, signalForWater).
+!water_regulation: moist  <- .print("moist"); !moist.

+!water <- water; .wait(500);  .print("Watering happened"); !water_regulation.
+!moist <- moist; .wait(1000); !water_regulation.

/*+waterLevel(Water): true <- !waterLevel(Water).


+!waterLevel(Water): Water < 7  <- 
						.print("WATER LEVEL RECEIVED IN AGENT = ", Water);
						.wait(1000);
						!water.
						
+!waterLevel(Water): Water >= 7 <- 
						.print("WATER OK IN AGENT = ", Water);
						.wait(1000);
						!moist.

+!water <- water; .wait(500);  .print("water happened").
+!moist <- moist; .wait(1000).*/