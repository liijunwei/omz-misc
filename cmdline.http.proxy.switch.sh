#!/bin/bash

function proxy_on(){
    export http_proxy=http://127.0.0.1:1087
    export https_proxy=http://127.0.0.1:1087
    echo -e "命令行代理已开启..."
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "命令行代理已关闭..."
}
