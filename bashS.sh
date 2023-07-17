# bash.sh
#its a challenge for bash scripting working with files and directories

#!/bin/bash

yourName="example"  # Replace "example" with your desired name
number=1

for ((i=1; i<=25; i++))
do
  fileName="$yourName$number.txt"
  touch "$fileName"
  ((number++))
done
yourName="sajjad"  # Replace "sajjad" with your desired name

# Find the maximum number in the existing files
maxNumber=0
for file in "$yourName"*.txt; do
  number=$(echo "$file" | grep -oE '[0-9]+')
  if ((number > maxNumber)); then
    maxNumber=$number
  fi
done

# Increment the maximum number and create the next batch of files
for ((i = maxNumber + 1; i <= maxNumber + 25; i++)); do
  fileName="$yourName$i.txt"
  touch "$fileName"
done
