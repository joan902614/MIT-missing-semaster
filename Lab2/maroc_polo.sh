maroc()
{
	echo $(pwd) > /tmp/pwd_for_lab2
	echo "save $(pwd) to /tmp/pwd_for_lab2"
}
polo()
{
	cd $(cat /tmp/pwd_for_lab2)
}
