
#fundamental lopps are WHILE & FOR ( untill, select)

#syntax;
loop-command expression or input ; do
  commands
done

while loop; (infinite while loop)

i=6
while [ $i -gt 2 ]; do
  echo print $i
done

while loop ( controlled while loop)
i=6
while [ $i -gt 2 ]; do
  echo print $i
  i=$(($i-1))
done

for loop

for fruit in apple banana orange ; do
  echo Fruit Name is $fruit
done

here in for loop fruit is a iteration variable