/*
!water_regulation.

+!water_regulation: dry <- .print("water"); !water.
+!water_regulation: moist  <- .print("moist"); !moist.

+!water <- water; .wait(200); !water_regulation.
+!moist <- moist; .wait(2000); !water_regulation.
*/