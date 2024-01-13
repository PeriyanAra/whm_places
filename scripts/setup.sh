#!/bin/sh
CWD=$(pwd)

brew tap leoafarias/fvm && brew install fvm && dart pub global deactivate fvm && dart pub global activate fvm && fvm install 3.10.7 && fvm use 3.10.7

$CWD/scripts/clean_all.sh
$CWD/scripts/get_all.sh
$CWD/scripts/gen_all.sh
