10PRINT"WIDTH OF MAZE (MAX 30)";\INPUTW\IFW<31THEN20\PRINT"TOO WIDE."
11GOTO10
20PRINT"HEIGHT OF MAZE (MAX 30)";\INPUTH\IFH<31THEN30\PRINT"TOO HIGH."
21GOTO20
30PRINT\H1=H*2-2\H2=H1-1\W1=W*2-2\W2=W1-1\DIMA(58,58),X(900),Y(900)
31FORI=1TOW2STEP2\FORJ=0TOH1STEP2\A(I,J)=1\NEXTJ\NEXTI\FORI=0TOW1STEP2
32FORJ=1TOH2STEP2\A(I,J)=1\NEXTJ\NEXTI\A(X,Y)=2\RANDOM\FORN=2TOH*W
33GOSUB1100\A(X1,Y1)=0\A(X2,Y2)=2\X=X2\Y=Y2\S=S+1\X(S)=X\Y(S)=Y\NEXTN
34GOSUB1200\STOP
1000R=INT(4*RND(0)+1)\IFR=2THEN1010\IFR=3THEN1015\IFR=4THEN1020
1005IFY=0THEN1000\X1=X\Y1=Y-1\X2=X\Y2=Y-2\RETURN
1010IFY=H1THEN1000\X1=X\Y1=Y+1\X2=X\Y2=Y+2\RETURN
1015IFX=0THEN1000\X1=X-1\Y1=Y\X2=X-2\Y2=Y\RETURN
1020IFX=W1THEN1000\X1=X+1\Y1=Y\X2=X+2\Y2=Y\RETURN
1100GOSUB1300\IFF>0THEN1105\S=S-1\X=X(S)\Y=Y(S)\GOTO1100
1105GOSUB1000\IFA(X1,Y1)+A(X2,Y2)<>1THEN1105\RETURN
1200GOSUB1400\FORI=0TOH1STEP2\PRINT"!";\FORJ=1TOW2STEP2
1201PRINT"   ";CHR$(A(J,I)+32);\NEXTJ
1210PRINT"   !"\IFI=H1THEN1220\PRINT"+";\FORJ=0TOW1STEP2
1211C=A(J,I+1)*13+32\PRINTCHR$(C);CHR$(C);CHR$(C);"+";\NEXTJ\PRINT
1220NEXTI\GOSUB1400\RETURN
1300F=0\IFX=0THEN1305\IFA(X-1,Y)+A(X-2,Y)<>1THEN1305\F=1
1305IFX=W1THEN1310\IFA(X+1,Y)+A(X+2,Y)<>1THEN1310\F=1
1310IFY=0THEN1315\IFA(X,Y-1)+A(X,Y-2)<>1THEN1315\F=1
1315IFY=H1THEN1320\IFA(X,Y+1)+A(X,Y+2)<>1THEN1320\F=1
1320RETURN
1400PRINT"+";\FORI=1TOW\PRINT"---+";\NEXTI\PRINT\RETURN\END
