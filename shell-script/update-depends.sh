#!/bin/bash
PWD=${0%/*}
cd $PWD

cd ../scripts && npm install && cd $PWD

cd .. && bundle update && cd batch

echo "======== Depends Updated ========"