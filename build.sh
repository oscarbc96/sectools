#!/bin/bash

find $(pwd)/tools -maxdepth 1 -mindepth 1 -type d | while read tool_folder; do
    tool=$(echo $tool_folder | rev | cut -d/ -f1 | rev)
    docker_image_name="oscarbc/$tool"

    echo "Processing tool '$tool'"
    docker build -t $docker_image_name $tool_folder
    docker push $docker_image_name
done
