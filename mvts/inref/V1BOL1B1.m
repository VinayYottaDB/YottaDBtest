V1BOL1B1 ;IW-YS-TS,V1BOL,MVTS V9.10;15/6/96;BINARY OPERATORS LOGICAL: '& -1-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"86---V1BOL1B1: Binary operators  logical: '&  -1-"
145 W !!,"Nand ('&)",!
 W !,"I-145  expratoms are 0 or 1"
1451 S ^ABSN="11174",^ITEM="I-145.1  1'&1",^NEXT="14511^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=1'&1,^VCORR="0" D ^VEXAMINE
14511 S ^ABSN="11175",^ITEM="I-145.1.1  '(1&1)",^NEXT="1452^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(1&1),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1452 S ^ABSN="11176",^ITEM="I-145.2  1'&0",^NEXT="14521^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=1'&0,^VCORR="1" D ^VEXAMINE
14521 S ^ABSN="11177",^ITEM="I-145.2.1  '(1&0)",^NEXT="1453^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(1&0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
1453 S ^ABSN="11178",^ITEM="I-145.3  0'&1",^NEXT="14531^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=0'&1,^VCORR="1" D ^VEXAMINE
14531 S ^ABSN="11179",^ITEM="I-145.3.1  '(0&1)",^NEXT="1454^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(0&1),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
1454 S ^ABSN="11180",^ITEM="I-145.4  0'&0",^NEXT="14541^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=0'&0,^VCORR="1" D ^VEXAMINE
14541 S ^ABSN="11181",^ITEM="I-145.4.1  '(0&0)",^NEXT="146^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(0&0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
146 W !,"I-146  expratoms are numlit"
1461 S ^ABSN="11182",^ITEM="I-146.1  2'&30000",^NEXT="14611^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=2'&30000,^VCORR="0" D ^VEXAMINE
14611 S ^ABSN="11183",^ITEM="I-146.1.1  '(2&30000)",^NEXT="1462^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(2&30000),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
1462 S ^ABSN="11184",^ITEM="I-146.2  40'&0",^NEXT="14621^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=40'&0,^VCORR="1" D ^VEXAMINE
14621 S ^ABSN="11185",^ITEM="I-146.2.1  '(40&0)",^NEXT="1463^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(40&0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
1463 S ^ABSN="11186",^ITEM="I-146.3  2E-10'&0",^NEXT="14631^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=2E-10'&0,^VCORR="1" D ^VEXAMINE
14631 S ^ABSN="11187",^ITEM="I-146.3.1  '(2E-10&0)",^NEXT="1464^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(2E-10&0),^VCORR="1" D ^VEXAMINE ;Test added in V7.4;16/9/89
1464 S ^ABSN="11188",^ITEM="I-146.4  00.0300'&4E10",^NEXT="14641^V1BOL1B1,V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP=00.0300'&4E10,^VCORR="0" D ^VEXAMINE
14641 S ^ABSN="11189",^ITEM="I-146.4.1  '(00.0300&4E10)",^NEXT="V1BOL1B2^V1BOL,V1BOC^VV1" D ^V1PRESET
 S ^VCOMP='(00.0300&4E10),^VCORR="0" D ^VEXAMINE ;Test added in V7.4;16/9/89
 ;
END W !!,"End of 86---V1BOL1B1",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
