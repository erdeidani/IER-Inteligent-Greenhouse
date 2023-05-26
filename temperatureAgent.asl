+!restartAgent <- restartAgent.

+temperature(X): X >= 30 <- decreaseTemperature;
							.print(X).
							
+temperature(X): X <= 23 <- increaseTemperature;
							.print(X).
							
+temperature(X): X >= 24 & X <= 30 <- restartAgent;
								.print("asfsafas ", X).


