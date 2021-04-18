#!/bin/bash
set -e

sed "s|##DATA_URL##|${DATA_URL:-data/}|g" /usr/share/nginx/html/config.template.json > /usr/share/nginx/html/config.json
sed -i "s|##ACTION_URL##|${ACTION_URL}|g" /usr/share/nginx/html/config.json

exec nginx -g 'daemon off;'