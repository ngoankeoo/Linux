#!/bin/bash

echo "Enter the directory source, which do you want coppy:"
read source

echo "Enter the directory destination, which do you want coppy to:"
read destination

cp -R $source/* $destination
