i=0

while read -r line; do
  i=$(( i+1 ))
  if [ $i -eq "11" ]; then
    echo "$line"
    break
  fi
done <joindevops.txt


#while read -r  line; do
#  echo "${line[11]}"
#done <joindevops.txt


