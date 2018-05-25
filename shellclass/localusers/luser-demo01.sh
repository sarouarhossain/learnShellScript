#!/bin/bash

# this script displays information to the screen

# display the text hello

echo 'Hello'

# assign value to a variable
WORD='script'
echo "$WORD"
echo "how ypu doing $WORD ."

# alternative way
echo "this is a good ${WORD}."

echo "${WORD}ing is fun."

# combine two variable
ENDING="ed"
echo "this is ${WORD}${ENDING}"

# reassignment
ENDING="inggggg"
echo "this is ${WORD}${ENDING}"
echo "Hello Roman"

