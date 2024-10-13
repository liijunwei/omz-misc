#!/bin/bash

function loc() {
    if command -v tokei &>/dev/null; then
        tokei
    else
        echo "tokei not found. install by: brew install tokei"
        # brew install tokei
    fi
}
