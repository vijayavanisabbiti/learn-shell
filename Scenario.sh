source joindevops.txt
x=0
want=11
while read -r line; do
  x=$(( x+1 ))
  if [ $x -eq "$want" ]; then
    echo "$line"
    break
  fi
done