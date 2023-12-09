source joindevops.txt

for LINE in $(cat "${source}"); do
    echo "$LINE"
done