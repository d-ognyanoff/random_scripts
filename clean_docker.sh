#!/bin/bash
echo -n "What to remove c/i?: "
echo
read DELETE

case "$DELETE" in
i)
	echo
	echo -n "Docker image list:"
	echo
	docker images
	echo
	echo "Which image would you like to delete?: "
	echo
	read image_name
	docker rmi "$image_name"
	;;

c)
	echo
	echo -n "Docker container list:"
	echo
	docker ps -a
	read container_name
	docker rm "$container_name"
	;;

*)
echo "Error!!"

esac
