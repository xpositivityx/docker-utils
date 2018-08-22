#!/bin/bash

docker build -t rubylinter .

sudo cp rubylinter /usr/local/bin/
