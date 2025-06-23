1DIMD$(3)\PRINT"Monty Hall problem"\PRINT
2PRINT"Are we going to switch (Y/N)";\INPUTA$\PRINT
3PRINT"How many repetitions";\INPUTN\RANDOM\FORI=1TON\GOSUB1000\NEXTI
4PRINT\PRINT"Wins:";W\PRINT"Losses:";L\STOP
1000D$(1)="G"\D$(2)="G"\D$(3)="G"\D$(INT(3*RND(0))+1)="C"\PRINT
1001G=INT(3*RND(0))+1\PRINT"You guess door #";G
1020D=INT(3*RND(0))+1\IFD$(D)="C"THEN1020\IFD=GTHEN1020
1021PRINT"Monty opens door #";D;"to reveal a goat."\IFA$="N"THEN1040
1022GOSUB2000\PRINT"You decide to switch to door #";F\GOTO1050
1040F=G\PRINT"You stick with door #";F
1050IFD$(F)="G"THEN1060\PRINT"Beep beep! You win! It's a car!"\W=W+1
1051RETURN
1060PRINT"Too baaaaad! It's a goat!"\L=L+1\RETURN
2000FORJ=1TO3\IFJ=GTHEN2010\IFJ=DTHEN2010\F=J
2010NEXTJ\RETURN\END
