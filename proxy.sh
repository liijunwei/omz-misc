#!/bin/bash

function proxy_on(){
    export http_proxy=http://192.168.31.50:7893
    export https_proxy=http://192.168.31.50:7893
    export all_proxy=socks5://192.168.31.50:7893
    echo -e "proxy enabled..."
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    unset all_proxy
    echo -e "proxy disabled..."
}
