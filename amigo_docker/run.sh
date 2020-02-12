#!/usr/bin/env bash

image_name=reubend:MICCAI20
#container_name = 0d13c9061269
extra_args=""
while [[ $# -gt 0 ]]
do
extra_args=$extra_args" $1"
shift # past argument
done

if [ ! -z "$extra_args" ]
then echo "Launching $container_name with extra arguments: '$extra_args'"
else echo "Launching $container_name..."
fi


eval "docker run -it \
           -v /raid/${USER}:/raid/${USER} \
           -v /home/${USER}:/home/${USER} \
           --net=host \
           -u $(id -u):$(id -g) \
           -p 83 \
           -w /home/${USER} \
           --shm-size 8G \
           ${extra_args} \
           ${image_name}\
           /bin/bash"
