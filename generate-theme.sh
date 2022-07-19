#!/bin/bash

git clone https://github.com/jath03/monokai-pro
cd monokai-pro
pipenv --rm
pipenv --three
pipenv run pip install sublate
pipenv run pip install -U jinja2
pipenv run sublate
find output/lapce/src -name '*theme.toml' -execdir bash  -c 'thing=${1:2}; mv -i "$1" "monokai-${thing//-theme/}"' bash {} \;
cp output/lapce/src/* ..
cd ..
rm -Rf monokai-pro
