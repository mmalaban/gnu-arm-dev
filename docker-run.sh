#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No argument provided. Please provide either 'zephyr' or 'gnu-arm'."
    exit 1
fi

if [ "$1" == "zephyr" ]; then
    echo "Starting Zephyr container..."
    docker run -it --rm --privileged -v $(pwd):/workspace zephyr-dev
elif [ "$1" == "gnu-arm" ]; then
    echo "Starting GNU Arm container..."
    docker run -it --rm --privileged -v $(pwd):/workspace gnu-arm-dev
else
    echo "Error: Invalid argument. Please provide either 'zephyr' or 'gnu-arm'."
    exit 1
fi
