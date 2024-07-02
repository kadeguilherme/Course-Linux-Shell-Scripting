#!/bin/bash

# This script display various information to the screen

# Display 'Hello'
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display that value using the variable.
echo "$WORD"

# Demostrate that single quotes cause variables to NOT get expanded.
echo '$WORD'

# Combine the variable with hard-coded text.
echo "This is a shell $WORD"

# Display the contents of the variable using an alternative syntax.
echo "This is a shel ${WORD}"

# Append text to the variable
echo "${WORD}ing is fun!"

# SHow how NOT to append text to a variable
# This doesn't work
echo "$WORDing is fun!"

# Create a new variable
ENDING='ed'

# Combine the two variable
echo "This is ${WORD}${ENDING}"

# Change the value stored in the ENDING variable.
ENDING='in'

echo "This is ${WORD}${ENDING}"
