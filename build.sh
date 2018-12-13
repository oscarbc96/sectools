#!/bin/bash

find $(pwd)/tools -maxdepth 1 -mindepth 1 -type d | while read tool_folder; do
    tool=$(echo $tool_folder | rev | cut -d/ -f1 | rev)
    echo "Processing tool '$tool'"

    docker build -t $tool $tool_folder
done
