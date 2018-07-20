#!/bin/awk
{if(NR==1) header=$col; if(NR==2) value=$col}
END{printf("%s: %.2f\n", header, value)}
