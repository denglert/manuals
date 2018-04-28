#!/bin/awk
BEGIN { i=0 }
{ if(ARGIND==1) { x[++i]=$1; a[$1]=$2 }; if(ARGIND==2) b[$1]=$2 }
END { n = asort(x); for(i=1; i<=n; i++) print x[i],a[x[i]],b[x[i]]}
