#!/bin/zsh

rsync -a -v  --exclude ".git/" ./ ~
