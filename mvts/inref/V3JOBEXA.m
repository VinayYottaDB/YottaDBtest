V3JOBEXA ;IW-KO-YS-TS,V3JOB,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 ;
A S V3JOB="LVN ERROR"
 S ^V3JOB=$J
 H
 ;
B S V3JOB="LVN ERROR"
 S ^V3JOB="OK"
 H
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
