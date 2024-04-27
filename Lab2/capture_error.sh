 #!/usr/bin/env bash

echo > /tmp/error
count=0

while true
do
	./error.sh &>> /tmp/error
	if [[ $? -ne 0 ]]; then
		break
	fi
	((count++))
done

echo "failed at $((count + 1)) th time"
cat /tmp/error


