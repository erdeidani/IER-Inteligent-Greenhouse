!start.
!asd(30).



+!start : true <- .print("hello world.").
					
+!asd(X): X > 0 <- .print(X).
+!asd(X): X <= 0 <- .print(X).

+percept(X): X > 0 <- .print(X).