$1=="MACRO"{f=1;name=$2}
(f==1){print $0}
$1=="END"&&$2==name{f=0}
