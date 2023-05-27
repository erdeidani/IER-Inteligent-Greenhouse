

+temperature(X): X > 30 <- decreaseTemperature;
							.print(X).
							
+temperature(X): X < 23 <- increaseTemperature;
							.print(X).
							
+temperature(X): X >= 23 & X <= 30 <- restartAgent;
								.print("asfsafas ", X).


//// Initial goal to maintain temperature
//!maintain_temperature(23,30).
//
//// Plan to handle temperature percept and reassert temperature
//+temperature(T_current) <- -temperature(T_current); +temperature(T_current).
//
//// Plan to increase temperature when it's too low
//+maintain_temperature(T_min, T_max) : temperature(T_current) & T_current < T_min <- increaseTemperature.
//
//// Plan to decrease temperature when it's too high
//+maintain_temperature(T_min, T_max) : temperature(T_current) & T_current > T_max <- decreaseTemperature.
//
//// Plan to maintain temperature when it's within range
//+maintain_temperature(T_min, T_max) : temperature(T_current) & T_current >= T_min & T_current <= T_max <- .wait(1000); !maintain_temperature(T_min, T_max).



