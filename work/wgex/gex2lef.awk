BEGIN{LAYER=0; previous_LAYER=0;}
$1=="L"{LAYER=$2}
($1=="B" || $1 == "W"){
    if (LAYER == 8 || LAYER == 10){ # ML1 or ML2
	if (LAYER == previous_LAYER){
	}
	else{
	    if (LAYER == 8) print "        LAYER ML1 ;";
	    else print "       LAYER ML2 ;"
	}
	printf("        ");
	if ($1 == "B"){
	    if ($3 != 280 && $3 != -10)
		print "RECT",$2*0.1, $3*0.1, $4*0.1, $5*0.1,";";
	    else
		print "";
	}
	else{
	    width = $2 * 0.1;
	    print "WIDTH", width,";";
	    printf("        PATH ");
	    for (i = 3; i <= NF; i+=2){
		printf("%.1f %.1f ", $i*0.1, $(i+1)*0.1);
	    }
	    print ";";
	}
	previous_LAYER = LAYER;
    }
}
$1=="C"{
    if ($7 == "dcont" || $7 == "pcont"){
	if (previous_layer != 8) print "        LAYER ML1 ;";
	print "      # VIA",$2*0.1,$3*0.1,$7;
	print "        RECT",$2*0.1-1, $3*0.1-1, $2*0.1+1, $3*0.1+1,";";
	previous_layer = 8;
    }
    if ($7 == "Via"){
	if (previous_layer != 8) print "        LAYER ML1 ;";
	print "      # VIA",$2*0.1,$3*0.1,"dcont";
	print "        RECT",$2*0.1-1, $3*0.1-1, $2*0.1+1, $3*0.1+1,";";
	print "        LAYER ML2 ;";
	print "      # VIA",$2*0.1,$3*0.1,"dcont";
	print "        RECT",$2*0.1-1, $3*0.1-1, $2*0.1+1, $3*0.1+1,";";
	previous_layer = 10;
    }
}
