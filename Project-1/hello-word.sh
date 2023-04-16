#!/bin/bash

# Displat 'Hello'
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display that value using the variable
echo "$WORD"

# Combine the variable with hard-coded text.
echo "This is a sheall $WORD"

# Display the contents of the variable using an alternative synstax.
echo "This is a she ${WORD}"

# Append text to the variable
echo "${WORD}ing is fun!"

# Show how NOT to append text to a variable.
# THis doesn't work
echo "$WORDing is fun!"

#Create a new variable
ENDING='ed'

# Combine the two variables.
echo "This is ${WORD}${ENDING}."

# Change the value stored in the ENDING variable.
ENDING='ing'
echo "This is ${WORD}${ENDING}."

# Reassign value to ENDING
ENDING='s'
echo "You are going to write many ${WORD}$ENDING in this class."