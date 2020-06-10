.subckt an21 A B VDD VSS Y
M5 Y net26 VSS VSS nch w=2u l=1u
M4 N001 A VSS VSS nch w=2u l=1u
M3 net26 B N001 VSS nch w=2u l=1u
M2 Y net26 VDD VDD pch w=6u l=1u
M1 net26 B VDD VDD pch w=6u l=1u
M0 net26 A VDD VDD pch w=6u l=1u
.ends an21

.subckt an31 A B C VDD VSS Y
M7 Y net19 VDD VDD pch w=6u l=1u
M6 net19 C VDD VDD pch w=6u l=1u
M5 net19 B VDD VDD pch w=6u l=1u
M4 net19 A VDD VDD pch w=6u l=1u
M3 Y net19 VSS VSS nch w=2u l=1u
M2 net19 C N001 VSS nch w=4.7u l=1u
M1 N001 B N002 VSS nch w=4.7u l=1u
M0 N002 A VSS VSS nch w=4.7u l=1u
.ends an31

.subckt an41 A B C D VDD VSS Y
M8 Y net44 VSS VSS nch w=2u l=1u
M7 N003 A VSS VSS nch w=6.2u l=1u
M6 N002 B N003 VSS nch w=6.2u l=1u
M5 N001 C N002 VSS nch w=6.2u l=1u
M4 net44 D N001 VSS nch w=6.2u l=1u
M9 Y net44 VDD VDD pch w=6u l=1u
M3 net44 D VDD VDD pch w=6u l=1u
M2 net44 C VDD VDD pch w=6u l=1u
M1 net44 B VDD VDD pch w=6u l=1u
M0 net44 A VDD VDD pch w=6u l=1u
.ends an41

.subckt buf1 A VDD VSS Y
M3 Y net13 VDD VDD pch w=6u l=1u
M2 net13 A VDD VDD pch w=6u l=1u
M1 net13 A VSS VSS nch w=2u l=1u
M0 Y net13 VSS VSS nch w=2u l=1u
.ends buf1

.subckt buf2 A VDD VSS Y
M4 Y net13 VDD VDD pch w=6u l=1u
M3 Y net13 VDD VDD pch w=6u l=1u
M2 net13 A VDD VDD pch w=6u l=1u
M5 Y net13 VSS VSS nch w=2u l=1u
M1 net13 A VSS VSS nch w=2u l=1u
M0 Y net13 VSS VSS nch w=2u l=1u
.ends buf2

.subckt buf4 A VDD VSS Y
M8 Y net13 VDD VDD pch w=6u l=1u
M6 Y net13 VDD VDD pch w=6u l=1u
M4 Y net13 VDD VDD pch w=6u l=1u
M3 Y net13 VDD VDD pch w=6u l=1u
M2 net13 A VDD VDD pch w=6u l=1u
M9 Y net13 VSS VSS nch w=2u l=1u
M7 Y net13 VSS VSS nch w=2u l=1u
M5 Y net13 VSS VSS nch w=2u l=1u
M1 net13 A VSS VSS nch w=2u l=1u
M0 Y net13 VSS VSS nch w=2u l=1u
.ends buf4

.subckt buf8 A VDD VSS Y
M17 Y net13 VDD VDD pch w=6u l=1u
M15 Y net13 VDD VDD pch w=6u l=1u
M12 Y net13 VDD VDD pch w=6u l=1u
M10 Y net13 VDD VDD pch w=6u l=1u
M8 Y net13 VDD VDD pch w=6u l=1u
M6 Y net13 VDD VDD pch w=6u l=1u
M4 Y net13 VDD VDD pch w=6u l=1u
M3 Y net13 VDD VDD pch w=6u l=1u
M2 net13 A VDD VDD pch w=6u l=1u
M16 Y net13 VSS VSS nch w=2u l=1u
M14 Y net13 VSS VSS nch w=2u l=1u
M13 Y net13 VSS VSS nch w=2u l=1u
M11 Y net13 VSS VSS nch w=2u l=1u
M9 Y net13 VSS VSS nch w=2u l=1u
M7 Y net13 VSS VSS nch w=2u l=1u
M5 Y net13 VSS VSS nch w=2u l=1u
M1 net13 A VSS VSS nch w=2u l=1u
M0 Y net13 VSS VSS nch w=2u l=1u
.ends buf8

.subckt cinv A OE VDD VSS YB
M5 net6 OE VSS VSS nch w=2u l=1u
M4 N002 A VSS VSS nch w=2u l=1u
M3 YB OE N002 VSS nch w=2u l=1u
M2 net6 OE VDD VDD pch w=6u l=1u
M1 YB net6 N001 VDD pch w=6u l=1u
M0 N001 A VDD VDD pch w=6u l=1u
.ends cinv

.subckt dff1 CK D Q VDD VSS
M26 Q net66 VDD VDD pch w=6u l=1u
M24 net66 net92 VDD VDD pch w=6u l=1u
M18 net78 net116 N003 VDD pch w=6u l=1u
M17 net78 net74 N004 VDD pch w=6u l=1u
M16 N003 net104 VDD VDD pch w=6u l=1u
M15 N004 net92 VDD VDD pch w=6u l=1u
M14 net92 net78 VDD VDD pch w=6u l=1u
M13 net104 net114 VDD VDD pch w=6u l=1u
M12 N002 net104 VDD VDD pch w=6u l=1u
M11 N001 D VDD VDD pch w=6u l=1u
M10 net114 net116 N002 VDD pch w=6u l=1u
M9 net114 net74 N001 VDD pch w=6u l=1u
M8 net116 net74 VDD VDD pch w=6u l=1u
M7 net74 CK VDD VDD pch w=6u l=1u
M27 Q net66 VSS VSS nch w=2u l=1u
M25 net66 net92 VSS VSS nch w=2u l=1u
M23 net78 net74 N007 VSS nch w=2u l=1u
M22 N007 net104 VSS VSS nch w=2u l=1u
M21 net78 net116 N008 VSS nch w=2u l=1u
M20 N008 net92 VSS VSS nch w=2u l=1u
M19 net92 net78 VSS VSS nch w=2u l=1u
M6 net116 net74 VSS VSS nch w=2u l=1u
M5 net74 CK VSS VSS nch w=2u l=1u
M4 net104 net114 VSS VSS nch w=2u l=1u
M3 N006 net104 VSS VSS nch w=2u l=1u
M2 net114 net74 N006 VSS nch w=2u l=1u
M1 N005 D VSS VSS nch w=2u l=1u
M0 net114 net116 N005 VSS nch w=2u l=1u
.ends dff1

.subckt exnr A B VDD VSS YB
M9 net18 B VSS VSS nch w=2u l=1u
M8 net18 A VSS VSS nch w=2u l=1u
M7 YB net42 net18 VSS nch w=2u l=1u
M6 N002 B VSS VSS nch w=2u l=1u
M5 net42 A N002 VSS nch w=2u l=1u
M4 YB net42 VDD VDD pch w=6u l=1u
M3 YB B N001 VDD pch w=6u l=1u
M2 N001 A VDD VDD pch w=6u l=1u
M1 net42 B VDD VDD pch w=6u l=1u
M0 net42 A VDD VDD pch w=6u l=1u
.ends exnr

.subckt exor A B VDD VSS Y
M9 net106 A VDD VDD pch w=6u l=1u
M8 net106 B VDD VDD pch w=6u l=1u
M7 Y net134 net106 VDD pch w=6u l=1u
M6 N001 A VDD VDD pch w=6u l=1u
M5 net134 B N001 VDD pch w=6u l=1u
M4 Y net134 VSS VSS nch w=2u l=1u
M3 N002 B VSS VSS nch w=2u l=1u
M2 Y A N002 VSS nch w=2u l=1u
M1 net134 B VSS VSS nch w=2u l=1u
M0 net134 A VSS VSS nch w=2u l=1u
.ends exor

.subckt inv1 A VDD VSS YB
M3 YB A VDD VDD pch w=6u l=1u
M0 YB A VSS VSS nch w=2u l=1u
.ends inv1

.subckt inv2 A VDD VSS YB
M4 YB A VDD VDD pch w=6u l=1u
M3 YB A VDD VDD pch w=6u l=1u
M5 YB A VSS VSS nch w=2u l=1u
M0 YB A VSS VSS nch w=2u l=1u
.ends inv2

.subckt inv4 A VDD VSS YB
M8 YB A VDD VDD pch w=6u l=1u
M6 YB A VDD VDD pch w=6u l=1u
M4 YB A VDD VDD pch w=6u l=1u
M3 YB A VDD VDD pch w=6u l=1u
M9 YB A VSS VSS nch w=2u l=1u
M7 YB A VSS VSS nch w=2u l=1u
M5 YB A VSS VSS nch w=2u l=1u
M0 YB A VSS VSS nch w=2u l=1u
.ends inv4

.subckt inv8 A VDD VSS YB
M17 YB A VDD VDD pch w=6u l=1u
M15 YB A VDD VDD pch w=6u l=1u
M12 YB A VDD VDD pch w=6u l=1u
M10 YB A VDD VDD pch w=6u l=1u
M8 YB A VDD VDD pch w=6u l=1u
M6 YB A VDD VDD pch w=6u l=1u
M4 YB A VDD VDD pch w=6u l=1u
M3 YB A VDD VDD pch w=6u l=1u
M16 YB A VSS VSS nch w=2u l=1u
M14 YB A VSS VSS nch w=2u l=1u
M13 YB A VSS VSS nch w=2u l=1u
M11 YB A VSS VSS nch w=2u l=1u
M9 YB A VSS VSS nch w=2u l=1u
M7 YB A VSS VSS nch w=2u l=1u
M5 YB A VSS VSS nch w=2u l=1u
M0 YB A VSS VSS nch w=2u l=1u
.ends inv8

.subckt na212 A0 A1 B0 VDD VSS YB
M5 net031 A1 VSS VSS nch w=2u l=1u
M4 net031 A0 VSS VSS nch w=2u l=1u
M3 YB B0 net031 VSS nch w=2u l=1u
M2 YB B0 VDD VDD pch w=6u l=1u
M1 YB A1 N001 VDD pch w=6u l=1u
M0 N001 A0 VDD VDD pch w=6u l=1u
.ends na212

.subckt na21 A B VDD VSS YB
M4 N001 A VSS VSS nch w=2u l=1u
M3 YB B N001 VSS nch w=2u l=1u
M1 YB B VDD VDD pch w=6u l=1u
M0 YB A VDD VDD pch w=6u l=1u
.ends na21

.subckt na222 A0 A1 B0 B1 VDD VSS YB
M7 net12 A1 VSS VSS nch w=2u l=1u
M6 net12 A0 VSS VSS nch w=2u l=1u
M5 YB B1 net12 VSS nch w=2u l=1u
M4 YB B0 net12 VSS nch w=2u l=1u
M3 YB A1 N002 VDD pch w=6u l=1u
M2 N002 A0 VDD VDD pch w=6u l=1u
M1 YB B1 N001 VDD pch w=6u l=1u
M0 N001 B0 VDD VDD pch w=6u l=1u
.ends na222

.subckt na31 A B C VDD VSS YB
M6 YB C VDD VDD pch w=6u l=1u
M5 YB B VDD VDD pch w=6u l=1u
M4 YB A VDD VDD pch w=6u l=1u
M2 YB C N001 VSS nch w=4.7u l=1u
M1 N001 B N002 VSS nch w=4.7u l=1u
M0 N002 A VSS VSS nch w=4.7u l=1u
.ends na31

.subckt na41 A B C D VDD VSS YB
M7 N003 A VSS VSS nch w=6.2u l=1u
M6 N002 B N003 VSS nch w=6.2u l=1u
M5 N001 C N002 VSS nch w=6.2u l=1u
M4 YB D N001 VSS nch w=6.2u l=1u
M3 YB D VDD VDD pch w=6u l=1u
M2 YB C VDD VDD pch w=6u l=1u
M1 YB B VDD VDD pch w=6u l=1u
M0 YB A VDD VDD pch w=6u l=1u
.ends na41

.subckt nr212 A0 A1 B0 VDD VSS YB
M5 net18 A1 VDD VDD pch w=6u l=1u
M4 net18 A0 VDD VDD pch w=6u l=1u
M3 YB B0 net18 VDD pch w=6u l=1u
M2 YB B0 VSS VSS nch w=2u l=1u
M1 N001 A0 VSS VSS nch w=2u l=1u
M0 YB A1 N001 VSS nch w=2u l=1u
.ends nr212

.subckt nr21 A B VDD VSS YB
M3 N001 A VDD VDD pch w=6u l=1u
M2 YB B N001 VDD pch w=6u l=1u
M1 YB B VSS VSS nch w=2u l=1u
M0 YB A VSS VSS nch w=2u l=1u
.ends nr21

.subckt nr222 A0 A1 B0 B1 VDD VSS YB
M7 N001 A0 VSS VSS nch w=2u l=1u
M6 N002 B0 VSS VSS nch w=2u l=1u
M5 YB B1 N002 VSS nch w=2u l=1u
M4 YB A1 N001 VSS nch w=2u l=1u
M3 YB B1 net31 VDD pch w=6u l=1u
M2 YB B0 net31 VDD pch w=6u l=1u
M1 net31 A1 VDD VDD pch w=6u l=1u
M0 net31 A0 VDD VDD pch w=6u l=1u
.ends nr222

.subckt nr31 A B C VDD VSS YB
M5 YB C VSS VSS nch w=2u l=1u
M4 YB B VSS VSS nch w=2u l=1u
M3 YB A VSS VSS nch w=2u l=1u
M2 YB C N002 VDD pch w=12.6u l=1u
M1 N002 B N001 VDD pch w=12.6u l=1u
M0 N001 A VDD VDD pch w=12.6u l=1u
.ends nr31

.subckt or21 A B VDD VSS Y
M4 Y net068 VDD VDD pch w=6u l=1u
M3 N001 A VDD VDD pch w=6u l=1u
M2 net068 B N001 VDD pch w=6u l=1u
M5 Y net068 VSS VSS nch w=2u l=1u
M1 net068 B VSS VSS nch w=2u l=1u
M0 net068 A VSS VSS nch w=2u l=1u
.ends or21

.subckt or31 A B C VDD VSS Y
M7 Y net075 VSS VSS nch w=2u l=1u
M5 net075 C VSS VSS nch w=2u l=1u
M4 net075 B VSS VSS nch w=2u l=1u
M3 net075 A VSS VSS nch w=2u l=1u
M6 Y net075 VDD VDD pch w=6u l=1u
M2 net075 C N002 VDD pch w=12.6u l=1u
M1 N002 B N001 VDD pch w=12.6u l=1u
M0 N001 A VDD VDD pch w=12.6u l=1u
.ends or31

.subckt rff1 CK D Q R VDD VSS
M29 net104 R N003 VDD pch w=6u l=1u
M31 net92 R N006 VDD pch w=6u l=1u
M26 Q net66 VDD VDD pch w=6u l=1u
M24 net66 net92 VDD VDD pch w=6u l=1u
M18 net78 net116 N004 VDD pch w=6u l=1u
M17 net78 net74 N005 VDD pch w=6u l=1u
M16 N004 net104 VDD VDD pch w=6u l=1u
M15 N005 net92 VDD VDD pch w=6u l=1u
M14 N006 net78 VDD VDD pch w=6u l=1u
M13 N003 net114 VDD VDD pch w=6u l=1u
M12 N002 net104 VDD VDD pch w=6u l=1u
M11 N001 D VDD VDD pch w=6u l=1u
M10 net114 net116 N002 VDD pch w=6u l=1u
M9 net114 net74 N001 VDD pch w=6u l=1u
M8 net116 net74 VDD VDD pch w=6u l=1u
M7 net74 CK VDD VDD pch w=6u l=1u
M27 Q net66 VSS VSS nch w=2u l=1u
M25 net66 net92 VSS VSS nch w=2u l=1u
M23 net78 net74 N009 VSS nch w=2u l=1u
M22 N009 net104 VSS VSS nch w=2u l=1u
M21 net78 net116 N010 VSS nch w=2u l=1u
M20 N010 net92 VSS VSS nch w=2u l=1u
M19 net92 net78 VSS VSS nch w=2u l=1u
M30 net92 R VSS VSS nch w=2u l=1u
M28 net104 R VSS VSS nch w=2u l=1u
M6 net116 net74 VSS VSS nch w=2u l=1u
M5 net74 CK VSS VSS nch w=2u l=1u
M4 net104 net114 VSS VSS nch w=2u l=1u
M3 N008 net104 VSS VSS nch w=2u l=1u
M2 net114 net74 N008 VSS nch w=2u l=1u
M1 N007 D VSS VSS nch w=2u l=1u
M0 net114 net116 N007 VSS nch w=2u l=1u
.ends rff1

.subckt sff1 CK D Q S VDD VSS
M28 net104 S VDD VDD pch w=6u l=1u
M31 net92 S VDD VDD pch w=6u l=1u
M26 Q net66 VDD VDD pch w=6u l=1u
M24 net66 net92 VDD VDD pch w=6u l=1u
M18 net78 net116 N003 VDD pch w=6u l=1u
M17 net78 net74 N004 VDD pch w=6u l=1u
M16 N003 net104 VDD VDD pch w=6u l=1u
M15 N004 net92 VDD VDD pch w=6u l=1u
M14 net92 net78 VDD VDD pch w=6u l=1u
M13 net104 net114 VDD VDD pch w=6u l=1u
M12 N002 net104 VDD VDD pch w=6u l=1u
M11 N001 D VDD VDD pch w=6u l=1u
M10 net114 net116 N002 VDD pch w=6u l=1u
M9 net114 net74 N001 VDD pch w=6u l=1u
M8 net116 net74 VDD VDD pch w=6u l=1u
M7 net74 CK VDD VDD pch w=6u l=1u
M27 Q net66 VSS VSS nch w=2u l=1u
M25 net66 net92 VSS VSS nch w=2u l=1u
M30 N010 net78 VSS VSS nch w=2u l=1u
M23 net78 net74 N008 VSS nch w=2u l=1u
M22 N008 net104 VSS VSS nch w=2u l=1u
M21 net78 net116 N009 VSS nch w=2u l=1u
M20 N009 net92 VSS VSS nch w=2u l=1u
M19 net92 S N010 VSS nch w=2u l=1u
M29 N007 net114 VSS VSS nch w=2u l=1u
M6 net116 net74 VSS VSS nch w=2u l=1u
M5 net74 CK VSS VSS nch w=2u l=1u
M4 net104 S N007 VSS nch w=2u l=1u
M3 N006 net104 VSS VSS nch w=2u l=1u
M2 net114 net74 N006 VSS nch w=2u l=1u
M1 N005 D VSS VSS nch w=2u l=1u
M0 net114 net116 N005 VSS nch w=2u l=1u
.ends sff1

.SUBCKT dff1_r CK VDD Q D VSS
MM29 Q QB VDD VDD pch w=6u l=1u
MM2 n10 n6 VSS VSS nch w=2u l=1u
MM20 n8 n10 n17 VDD pch w=6u l=1u
MM24 n18 n10 n11 VDD pch w=6u l=1u
MM26 n19 n7 VDD VDD pch w=6u l=1u
MM27 n7 n11 VDD VDD pch w=6u l=1u
MM22 n5 n8 VDD VDD pch w=6u l=1u
MM0 n9 CK VSS VSS nch w=2u l=1u
MM14 Q QB VSS VSS nch w=2u l=1u
MM12 n7 n11 VSS VSS nch w=2u l=1u
MM4 n12 n10 n8 VSS nch w=2u l=1u
MM18 n16 D VDD VDD pch w=6u l=1u
MM6 n13 n5 VSS VSS nch w=2u l=1u
MM17 n10 n6 VDD VDD pch w=6u l=1u
MM23 n18 n5 VDD VDD pch w=6u l=1u
MM28 QB n7 VDD VDD pch w=6u l=1u
MM19 n16 n6 n8 VDD pch w=6u l=1u
MM11 n15 n7 VSS VSS nch w=2u l=1u
MM16 n6 n9 VDD VDD pch w=6u l=1u
MM9 n14 n6 n11 VSS nch w=2u l=1u
MM15 n9 CK VDD VDD pch w=6u l=1u
MM25 n11 n6 n19 VDD pch w=6u l=1u
MM5 n8 n6 n13 VSS nch w=2u l=1u
MM3 n12 D VSS VSS nch w=2u l=1u
MM21 n17 n5 VDD VDD pch w=6u l=1u
MM8 n14 n5 VSS VSS nch w=2u l=1u
MM7 n5 n8 VSS VSS nch w=2u l=1u
MM13 QB n7 VSS VSS nch w=2u l=1u
MM1 n6 n9 VSS VSS nch w=2u l=1u
MM10 n11 n10 n15 VSS nch w=2u l=1u
.ends

.SUBCKT rff1_r CK VDD Q D VSS
MM37 n5 n8 VSS VSS nch w=2u l=1u
MM38 n5 R VSS VSS nch w=2u l=1u
MM39 n14 n5 VSS VSS nch w=2u l=1u
MM46 Q QB VSS VSS nch w=2u l=1u
MM58 n7 n6 n20 VDD pch w=6u l=1u
MM43 n9 n7 VSS VSS nch w=2u l=1u
MM60 n21 n7 VDD VDD pch w=6u l=1u
MM45 QB n9 VSS VSS nch w=2u l=1u
MM48 n6 n10 VDD VDD pch w=6u l=1u
MM55 n18 R n5 VDD pch w=6u l=1u
MM61 n21 R n9 VDD pch w=6u l=1u
MM49 n11 n6 VDD VDD pch w=6u l=1u
MM53 n17 n5 VDD VDD pch w=6u l=1u
MM50 n16 D VDD VDD pch w=6u l=1u
MM51 n16 n6 n8 VDD pch w=6u l=1u
MM41 n7 n11 n15 VSS nch w=2u l=1u
MM52 n8 n11 n17 VDD pch w=6u l=1u
MM40 n14 n6 n7 VSS nch w=2u l=1u
MM34 n12 n11 n8 VSS nch w=2u l=1u
MM63 Q QB VDD VDD pch w=6u l=1u
MM47 n10 CK VDD VDD pch w=6u l=1u
MM36 n13 n5 VSS VSS nch w=2u l=1u
MM59 n20 n9 VDD VDD pch w=6u l=1u
MM30 n10 CK VSS VSS nch w=2u l=1u
MM56 n19 n5 VDD VDD pch w=6u l=1u
MM35 n8 n6 n13 VSS nch w=2u l=1u
MM54 n18 n8 VDD VDD pch w=6u l=1u
MM32 n11 n6 VSS VSS nch w=2u l=1u
MM44 n9 R VSS VSS nch w=2u l=1u
MM62 QB n9 VDD VDD pch w=6u l=1u
MM31 n6 n10 VSS VSS nch w=2u l=1u
MM57 n19 n11 n7 VDD pch w=6u l=1u
MM42 n15 n9 VSS VSS nch w=2u l=1u
MM33 n12 D VSS VSS nch w=2u l=1u
.ends


.SUBCKT sff1_r CK S VDD Q D VSS
MM95 n11 S VDD VDD pch w=6u l=1u
MM94 n11 n7 VDD VDD pch w=6u l=1u
MM88 n5 n8 VDD VDD pch w=6u l=1u
MM86 n8 n10 n19 VDD pch w=6u l=1u
MM66 n10 n6 VSS VSS nch w=2u l=1u
MM84 n18 D VDD VDD pch w=6u l=1u
MM90 n20 n5 VDD VDD pch w=6u l=1u
MM82 n6 n9 VDD VDD pch w=6u l=1u
MM87 n19 n5 VDD VDD pch w=6u l=1u
MM91 n20 n10 n7 VDD pch w=6u l=1u
MM78 n17 S n11 VSS nch w=2u l=1u
MM71 n14 n8 VSS VSS nch w=2u l=1u
MM73 n15 n5 VSS VSS nch w=2u l=1u
MM77 n17 n7 VSS VSS nch w=2u l=1u
MM75 n7 n10 n16 VSS nch w=2u l=1u
MM97 Q QB VDD VDD pch w=6u l=1u
MM92 n7 n6 n21 VDD pch w=6u l=1u
MM74 n15 n6 n7 VSS nch w=2u l=1u
MM79 QB n11 VSS VSS nch w=2u l=1u
MM69 n8 n6 n13 VSS nch w=2u l=1u
MM67 n12 D VSS VSS nch w=2u l=1u
MM83 n10 n6 VDD VDD pch w=6u l=1u
MM65 n6 n9 VSS VSS nch w=2u l=1u
MM80 Q QB VSS VSS nch w=2u l=1u
MM96 QB n11 VDD VDD pch w=6u l=1u
MM76 n16 n11 VSS VSS nch w=2u l=1u
MM70 n13 n5 VSS VSS nch w=2u l=1u
MM89 n5 S VDD VDD pch w=6u l=1u
MM81 n9 CK VDD VDD pch w=6u l=1u
MM85 n18 n6 n8 VDD pch w=6u l=1u
MM68 n12 n10 n8 VSS nch w=2u l=1u
MM93 n21 n11 VDD VDD pch w=6u l=1u
MM64 n9 CK VSS VSS nch w=2u l=1u
MM72 n14 S n5 VSS nch w=2u l=1u
.ends
