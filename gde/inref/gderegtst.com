t -r -j
t -r -r=512
t -r -j=nobe -r=400
a -r
a -r  -d=a
a -r 1 -d=a
a -r a
a -r a -nod
a -r a -d=1
a -r a -d=a -d=a
a -r a -d
a -r a2345678901234567 -d=a
a -r a234567890123456 -d=a2345678901234567
a -r a -d=a234567890123456 -k=2
a -r a -d=a -k=256
a -r a -d=a -k=255 -r=32509
a -r a -d=a -k=3 -r=6
a -r a -d=a -r=7 -j=bef=1
a -r a -d=a -j=f=f
a -r a -d=a -j=(bef,f=f
a -r a -d=a -j=(bef,bef)
a -r a -d=a -j=(bef,all=16777217)
a -r a -d=a -j=(bef,all=16777216,buff=32769)
a -r a -d=a -j=(bef,buff=32768,ext=65536)
a -r a -d=a -j=(bef,ext=65535,file=a234567::a123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890a23456789012345678901234567890123456789.a234567890)
a -r a -d=a -j=(file=a234567::a123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890:[a45678901234567890123456789012345678901.a4567890123456789012345678]a12345678901234567890123456789012345678.a123456789012345678901234
a -r a -d=b -r=32508
c -r b -d=b
c -r a -j
a -r b -d=b
a -r b -d=b
r -r a b
r -r a c
r -r a c
d -r a
d -r c
sh -r c
v -r c
a -r a -d=b
sh -r a
sh -r
v -r a
v -r 
