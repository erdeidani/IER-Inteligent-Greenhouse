/*
//this is reaction to belief with conditions
+cold <- !heat ; !say("hello").
-cold <- !cool.

+temp(X): X < 5 & cold <- .print("heat"); !heat. 
+temp(X): X > 0 & not cold <- .print("cool"); !cool.

+temp(X): X = 0 <- .print("cool"); +cold.
+temp(X): X = 5 <- .print("cool"); -cold.


+!heat <-  increase; .wait(200); temp(X).
+!cool <-  decrease; .wait(200); temp(X).

+!say(X) <- .print(X); .wait(500); !say(X).
*/

!temp_reg.

+!temp_reg: cold 	 <- .print("heat"); !heat; !temp_reg. 
+!temp_reg: not cold <- .print("cool"); !cool; !temp_reg.

+!heat <-  increase; .wait(200); temp(X).
+!cool <-  decrease; .wait(200); temp(X).
