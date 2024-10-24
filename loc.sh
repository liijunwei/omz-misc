#!/bin/bash

function loc() {
    if command -v tokei &>/dev/null; then
        tokei --sort code --compact
    else
        echo "tokei not found. install by: brew install tokei"
        # brew install tokei
    fi
}
