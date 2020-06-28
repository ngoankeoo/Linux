#!/bin/bash

echo "Enter the character which do you want find:"
read character

find / -type d -name "*$character*"
