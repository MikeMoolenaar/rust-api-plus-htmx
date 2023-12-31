#!/bin/bash

# TODO should pick values from package.json
HTMX_VERSION=1.9.9
HYPERSCRIPT_VERSION=0.9.12

# This script copies static files to the dist folder to node_modules

# Check if node_modules folder exists
if [ ! -d "node_modules" ]; then
  echo "node_modules folder does not exist. Please run npm install first."
  exit 1
fi

# Clear folder if dist folder exists
if [ -d "dist" ]; then
  rm -rf dist
fi
mkdir dist

cp -r ./node_modules/htmx.org/dist/htmx.min.js "./dist/htmx-$HTMX_VERSION.min.js"
cp -r ./node_modules/hyperscript.org/dist/_hyperscript.min.js "./dist/_hyperscript-$HYPERSCRIPT_VERSION.min.js"
