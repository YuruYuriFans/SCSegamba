#!/bin/bash

# Check if environment exists
if conda info --envs | grep -q "SCSegamba"; then
    echo "Environment exists, updating..."
    conda env update -n SCSegamba -f SCSegamba.yml --prune
else
    echo "Creating environment..."
    conda env create -f SCSegamba.yml
fi

# Run the Python script in the environment without activating
conda run -n SCSegamba python3 main.py
