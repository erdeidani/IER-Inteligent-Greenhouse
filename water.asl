data(Temp, Water, Humidity).
!water_regulation.



+!water_regulation: data(Temp, Water, Humidity) & Water < 7 <- 
.print("water, open ", Water); .send(master, achieve, signalForWater).

+!water_regulation: data(Temp, Water, Humidity) & Water >= 7  <- 
.print("moist"); .send(master, achieve, signalForNoWater).

+!water <- water; .wait(500);  .print("Watering happened"); !water_regulation.
+!moist <- moist; .wait(1000); !water_regulation.