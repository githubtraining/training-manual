#!/bin/bash

npm install -g docsify-cli
python -m pip install --upgrade pip setuptools
python -m pip install --upgrade httpie
python -m pip install 'urllib3<2'

gh extension install github/gh-valet
