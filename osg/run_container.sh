#!/bin/bash

mkdir -p ~/.container_histories
touch ~/.container_histories/vbrik-gridftp

docker run -it --rm --name vbrik-gridftp \
        -v ~/.container_histories/vbrik-gridftp:/root/.bash_history \
        -v ~/.globus:/root/.globus \
        vbrik/osg:latest
