#!/bin/zsh

rsync -a -v  --exclude ".git/" --exclude "syncback.sh" --exclude "README.md" ./ ~
