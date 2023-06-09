
!water_regulation.

+!water_regulation: dry <- .print("water"); .send(master, achieve, voteForWater).
+!water_regulation: moist  <- .print("moist"); !moist.

+!water <- water; .wait(500);  .print("water happened"); !water_regulation.
+!moist <- moist; .wait(1000); !water_regulation.
