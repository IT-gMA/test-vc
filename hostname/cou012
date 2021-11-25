#!/bin/bash

# Create the "hidden" recycle_bin directory if it doesnt exist b4
SCRIPT_DIR="$(cd $(dirname ${BASH_SOURCE[0]}));pwd"     # The first element of the BASH_SOURCE array 
                                                    #will always contain the executing script (this one)
                                                    # Use the semicolon to create a new line on this same line 
RECYLE_BIN_DIR=$SCRIPT_DIR/.recycle_bin

if [ ! -e $RECYLE_BIN_DIR ]
then
    mkdir $RECYLE_BIN_DIR
    echo "Create a recycle bin directory at $RECYCLE_BIN_DIR."
fi

del () {
    # Arrays in bash script (similar to list?)
    FILES=()
    OPTIONS=()


    for INPUT in $@     # Iterate through each argument in the argument list-#@ or #*
    do
        # ebnf notation
        if $(echo $INPUT | grep -Eq '\-[a-zA-Z]?[0-9]*')    # has a "-" infront of it
        then 
            echo "$INPUT is an option"
            OPTIONS+=($INPUT)
        else                                                # doesnt have a "-" infront of it
            echo "$INPUT is probably a path"
            FILES+=($INPUT)
        fi
    done

}