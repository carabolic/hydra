#!/usr/bin/env bash

# Copied from Stackoverflow: https://stackoverflow.com/a/76917497/458436
_hydra(){
    local -n ln=READLINE_LINE pt=READLINE_POINT

    # if line is not empty, just insert a space
    if [[ -n $ln ]]; then
        ln="${ln:0:pt} ${ln:pt}"
        (( pt++ ))
        return
    fi

    hydra $HYDRA
}

bind -x '" ":_hydra'
