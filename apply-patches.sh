#!/bin/sh

for f in $(ls patches/*.diff); do
    patch -N -F 10 -i $f
    if [ $? != 0 ]; then
        echo "problem with patch: $f"
        exit
    fi
done

