#!/bin/bash

function proxy_on(){
    export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
    echo -e "proxy enabled..."
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "proxy disabled..."
}
