1RANDOM\X=INT(100*RND(0))+1
2PRINT"I'VE THOUGHT OF A NUMBER BETWEEN 1 AND 100."
3PRINT"CAN YOU GUESS WHAT IT IS?"\N=0
60N=N+1\PRINT\PRINT"YOUR GUESS";\INPUTG\IFG<>XTHEN130\PRINT
61PRINT"YOU GUESSED IT IN";N;"GUESSES!"\IFN<=7THEN120
62PRINT"BUT IT SHOULD HAVE ONLY TAKEN YOU 7 GUESSES."
120STOP
130IFG>XTHEN160\PRINT"TOO LOW."\GOTO60
160PRINT"TOO HIGH."\GOTO60\END
