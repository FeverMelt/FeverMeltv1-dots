#!/bin/bash

cava -p ~/.config/cava/config | while IFS= read -r line; do
    echo "$line"
done
