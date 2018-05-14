n=$(cat $1|wc -l)
star=$(head -3 $1|grep the|wc -l)
di=$(tail -4 $1|grep for |wc -l)
head -3 $1|sed "s/the/it/g" > file.txt
r=`expr $n - 3`
tail -$r $1|sed "s/for/when/g" >>file.txt
sort -r file.txt
rm file.txt
c=$(echo "$star*$star+$di"|bc )
echo "cost=$c"

