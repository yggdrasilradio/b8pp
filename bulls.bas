1DIMA(4),G(4)\PRINT"GUESS MY FOUR-DIGIT RANDOM NUMBER."\PRINT"I WILL GIVE YOU HINTS:"
2PRINT"* BULLS: # DIGITS IN RIGHT PLACE."\PRINT"* COWS: # DIGITS IN WRONG PLACE."
3PRINT\RANDOMIZE\A(1)=INT(9*RND(0))+1
5A(2)=INT(9*RND(0))+1\IFA(2)=A(1)THEN5
6A(3)=INT(9*RND(0))+1\IFA(3)=A(1)THEN6\IFA(3)=A(2)THEN6
7A(4)=INT(9*RND(0))+1\IFA(4)=A(1)THEN7\IFA(4)=A(2)THEN7\IFA(4)=A(3)THEN7
8T=0
10T=T+1\PRINT"YOUR GUESS";\INPUTN\IFN=0THEN80\G(1)=INT(N/1000)\N=N-(1000*G(1))
11G(2)=INT(N/100)\N=N-(100*G(2))\G(3)=INT(N/10)\N=N-(10*G(3))\G(4)=N\B=0
12C=0\FORI=1TO4\IFG(I)=A(I)THEN60\FORJ=1TO4\IFI=JTHEN50\IFG(I)<>A(J)THEN50
13C=C+1\GOTO70
50NEXTJ\GOTO70
60B=B+1
70NEXTI\PRINTB;"BULLS,";C;"COWS"\IFB<4THEN10\PRINT\PRINT"YOU GOT IT IN";T;"TURNS!"
71STOP
80PRINTA(1);A(2);A(3);A(4)\END
