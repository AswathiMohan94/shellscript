#!/bin/bash -x
declare -A sounds
sounds[dog]=bark
sounds[koyal]=koo
sounds[cow]=mow
sounds[bird]=chik
sounds[mess]=moo

echo "dog Sound:${sounds[dog]}"
echo "koyal Sound:${sounds[koyal]}"

echo "Sound size:${#sounds[@]}"
echo "all index:${!sounds[@]}"




