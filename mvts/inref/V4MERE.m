V4MERE(V) ;IW-KO-YS-TS,V4MERGE,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 S R=""
 I $D(@V)#10=1 S R=R_":"_@V
 I $D(@V@(1))#10=1 S R=R_"1:"_@V@(1)
 I $D(@V@(1,1))#10=1 S R=R_"11:"_@V@(1,1)
 I $D(@V@(1,1,1))#10=1 S R=R_"111:"_@V@(1,1,1)
 I $D(@V@(1,1,1,1))#10=1 S R=R_"1111:"_@V@(1,1,1,1)
 I $D(@V@(1,1,1,1,1))#10=1 S R=R_"11111:"_@V@(1,1,1,1,1)
 I $D(@V@(1,1,1,1,2))#10=1 S R=R_"11112:"_@V@(1,1,1,1,2)
 I $D(@V@(1,1,1,2))#10=1 S R=R_"1112:"_@V@(1,1,1,2)
 I $D(@V@(1,1,2))#10=1 S R=R_"112:"_@V@(1,1,2)
 I $D(@V@(1,1,2,1))#10=1 S R=R_"1121:"_@V@(1,1,2,1)
 I $D(@V@(1,1,2,2))#10=1 S R=R_"1122:"_@V@(1,1,2,2)
 I $D(@V@(1,2))#10=1 S R=R_"12:"_@V@(1,2)
 I $D(@V@(1,2,1))#10=1 S R=R_"121:"_@V@(1,2,1)
 I $D(@V@(1,2,1,1))#10=1 S R=R_"1211:"_@V@(1,2,1,1)
 I $D(@V@(1,2,1,1,1))#10=1 S R=R_"12111:"_@V@(1,2,1,1,1)
 I $D(@V@(2))#10=1 S R=R_"2:"_@V@(2)
 I $D(@V@(2,1))#10=1 S R=R_"21:"_@V@(2,1)
 I $D(@V@(2,1,1))#10=1 S R=R_"211:"_@V@(2,1,1)
 I $D(@V@(2,1,1,1))#10=1 S R=R_"2111:"_@V@(2,1,1,1)
 I $D(@V@(2,1,1,1,1))#10=1 S R=R_"21111:"_@V@(2,1,1,1,1)
 I $D(@V@(2,1,2))#10=1 S R=R_"212:"_@V@(2,1,2)
 I $D(@V@(2,1,2,1))#10=1 S R=R_"2121:"_@V@(2,1,2,1)
 I $D(@V@(2,1,2,1,1))#10=1 S R=R_"21211:"_@V@(2,1,2,1,1)
 I $D(@V@(2,2))#10=1 S R=R_"22:"_@V@(2,2)
 I $D(@V@(2,2,1))#10=1 S R=R_"221:"_@V@(2,2,1)
 I $D(@V@(2,2,1,1))#10=1 S R=R_"2211:"_@V@(2,2,1,1)
 I $D(@V@(2,2,1,1,1))#10=1 S R=R_"22111:"_@V@(2,2,1,1,1)
 I $D(@V@(3))#10=1 S R=R_"3:"_@V@(3)
 I $D(@V@(3,1))#10=1 S R=R_"31:"_@V@(3,1)
 I $D(@V@(3,1,1))#10=1 S R=R_"311:"_@V@(3,1,1)
 I $D(@V@(3,1,1,1))#10=1 S R=R_"3111:"_@V@(3,1,1,1)
 I $D(@V@(3,1,1,1,1))#10=1 S R=R_"31111:"_@V@(3,1,1,1,1)
 I $D(@V@(3,2))#10=1 S R=R_"32:"_@V@(3,2)
 I $D(@V@(3,2,1))#10=1 S R=R_"321:"_@V@(3,2,1)
 I $D(@V@(3,2,1,1))#10=1 S R=R_"3211:"_@V@(3,2,1,1)
 I $D(@V@(3,2,1,1,1))#10=1 S R=R_"32111:"_@V@(3,2,1,1,1)
 I $D(@V@("A"))#10=1 S R=R_"A:"_@V@("A")
 I $D(@V@("A",1))#10=1 S R=R_"A1:"_@V@("A",1)
 I $D(@V@("A",1,1))#10=1 S R=R_"A11:"_@V@("A",1,1)
 I $D(@V@("A",1,1,1))#10=1 S R=R_"A111:"_@V@("A",1,1,1)
 I $D(@V@("A",1,1,1,1))#10=1 S R=R_"A1111:"_@V@("A",1,1,1,1)
 I $D(@V@("A",1,1,2))#10=1 S R=R_"A112:"_@V@("A",1,1,2)
 I $D(@V@("A",1,1,2,1))#10=1 S R=R_"A1121:"_@V@("A",1,1,2,1)
 I $D(@V@("A",2))#10=1 S R=R_"A2:"_@V@("A",2)
 I $D(@V@("A",2,1))#10=1 S R=R_"A21:"_@V@("A",2,1)
 I $D(@V@("A",2,1,1))#10=1 S R=R_"A211:"_@V@("A",2,1,1)
 I $D(@V@("A",2,1,1,1))#10=1 S R=R_"A2111:"_@V@("A",2,1,1,1)
 I $D(@V@("A",2,1,2))#10=1 S R=R_"A212:"_@V@("A",2,1,2)
 I $D(@V@("A",2,1,2,1))#10=1 S R=R_"A2121:"_@V@("A",2,1,2,1)
 I $D(@V@("A",3))#10=1 S R=R_"A3:"_@V@("A",3)
 I $D(@V@("A",3,1))#10=1 S R=R_"A31:"_@V@("A",3,1)
 I $D(@V@("A",3,1,1))#10=1 S R=R_"A311:"_@V@("A",3,1,1)
 I $D(@V@("A",3,1,1,1))#10=1 S R=R_"A3111:"_@V@("A",3,1,1,1)
 I $D(@V@("B"))#10=1 S R=R_"B:"_@V@("B")
 I $D(@V@("B",1))#10=1 S R=R_"B1:"_@V@("B",1)
 I $D(@V@("B",1,1))#10=1 S R=R_"B11:"_@V@("B",1,1)
 I $D(@V@("B",1,1,1))#10=1 S R=R_"B111:"_@V@("B",1,1,1)
 I $D(@V@("B",1,1,1,1))#10=1 S R=R_"B1111:"_@V@("B",1,1,1,1)
 I $D(@V@("B",2))#10=1 S R=R_"B2:"_@V@("B",2)
 I $D(@V@("B",2,1))#10=1 S R=R_"B21:"_@V@("B",2,1)
 I $D(@V@("B",2,1,1))#10=1 S R=R_"B211:"_@V@("B",2,1,1)
 I $D(@V@("B",2,1,1,1))#10=1 S R=R_"B2111:"_@V@("B",2,1,1,1)
 Q R
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
