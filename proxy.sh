#!/bin/bash

function proxy_on(){
    export http_proxy=http://127.0.0.1:61844
    export https_proxy=http://127.0.0.1:61844
    export all_proxy=socks5://127.0.0.1:61844
    # export http_proxy=http://127.0.0.1:7890
    # export https_proxy=http://127.0.0.1:7890
    # export all_proxy=socks5://127.0.0.1:7890
    echo -e "proxy enabled..."
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    unset all_proxy
    echo -e "proxy disabled..."
}
