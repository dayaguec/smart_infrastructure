#!/bin/bash

# Checkout to 'master' every submodule.
parent_folder=${PWD}
echo "update every package to master..."

git submodule foreach git checkout master

cd $parent_folder/carla_infrastructure
git checkout devel
