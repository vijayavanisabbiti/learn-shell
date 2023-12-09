i=0

while read -r line; do
  test $((++i))=10 && echo "$line"
done <joindevops.txt




while read -r  line; do
  echo "${line[11]}"
done <joindevops.txt


