#!/bin/sh -l

echo "Running the custom Django setup action"
echo "Python Version: $INPUT_PYTHON"
echo "Django Version: $INPUT_DJANGO"

# Install the specified Python version
apk add --no-cache python$INPUT_PYTHON

# Install the specified Django version
pip install Django==$INPUT_DJANGO

# Install project dependencies from requirements.txt
pip install -r /github/workspace/requirements.txt
