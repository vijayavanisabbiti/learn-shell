i=0
want=11

while read -r line; do
  i=$(( i+1 ))
  if [ $i -eq "$want" ]; then
    echo "$line"
    break
  fi
done <joindevops.txt




while read -r  line; do
  echo "${line[11]}"
done <joindevops.txt


