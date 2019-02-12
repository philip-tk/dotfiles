#!/usr/local/bin/zsh

rsync -a -v  --exclude ".git/" ".syncback.sh" ./ ~
