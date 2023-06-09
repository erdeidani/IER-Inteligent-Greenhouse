/*data(Temp, Water, Humidity).

+data(Temp, Water, Humidity) <- 
	.print("WATer = ", Water);
	!voteForWater(Water).*/

/*+!voteForWater(Water): Water <= 10 <- 
					.print("want to water"); 
					.send(water, tell, waterLevel(Water)).*/
					//.send(temp, achieve, canWater);
					//.send(window, achieve, canWater).
					
+!signalForWater <- 	.print("Wants to water"); 
					.send(water, achieve, water).
					
+!signalForTemp <- .print("Wants to increase temperature");
				.send(temp, achieve, heat).	
				
+!signalForOpenWindow <- .print("Wants to window");
					.send(window, achieve, open).
					
+!signalForOpenWindow <- .print("Wants to close");
						.send(window, achieve, close).
					
/*+!voteForWindowOpen <- .print("Wants to open window");
					.send(window, achieve, open).
+!voteForWindowClose <- .print("Wants to close window");
						.send(window, achieve).*/
/*				
+canWater(water, decisionWa) : true <- true.
+canWater(temp, decisionT) : true <- true.
+canWater(window, decisionWi) : true <- -+allVotes.



+tooCold <- .print("Too cold")
+tooHot
*/