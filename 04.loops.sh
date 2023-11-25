# there are four loops
# while and for loop
# while for expression and for loop if you have inputs
# Loop is used when you're trying to execute the same set of commands again and again in an iterative way

a=12
while ( "$a" -gt 0 ); do
  echo 'Hello World'
  a=$(($a-1))
done

