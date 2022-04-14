#!/usr/bin/env bash

function get_current_ip_info() {
  local current_ip=$(curl -s ip.me)
  local api_endpoint="https://api.iplocation.net/?ip="

  curl -s "${api_endpoint}${current_ip}" | jq
}
