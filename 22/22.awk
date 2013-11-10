BEGIN {
	UC="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	total_score=0;
}
{
    score=0;
# look at each character
    for(i=1;i<=length($0);i++) {
        char=substr($0,i,1);
        j=index(UC,char);
		score=score+j;
    }
	total_score = total_score + score*NR;
    #printf("%d = %d\n", score*NR, total_score);
}
END {
	printf("%d\n", total_score)
}
