for i in 1 2 3 4 5 
do 
echo "$i"
 done

# for loop

 for server in google.com amazaon.com
 do 
 echo "ping -c 1 $server"
 done


# while loop

count=1

until [ $count -le 5 ]
do 
echo "$count"
((count++))

done


# break loop

for i in 1 2 3 4 5
do 
if [ $i -eq 4 ]
then
 continue
 fi
 echo "$i"
 done


 #task 1

 for i in {1..10}
do 
echo "$i"
done

#task 2

for file in *
do
size=$( du -h "$file" | cut -f1           )
echo "$file - $size"
done