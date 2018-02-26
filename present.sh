#!/bin/bash

# Lazy mode
# TODO: 
#   - Checar se a pasta do curso existe e premitir apenas se ela existe

prez=./node_modules/prez/bin/prez.js

node $prez $1 docs/$1 --theme=league --watch --serve
