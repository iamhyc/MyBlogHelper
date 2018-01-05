#!/bin/bash
PWD=${0%/*}
cd $PWD

cd ../scripts && node website-archieve.js && cd $PWD

read -n 1