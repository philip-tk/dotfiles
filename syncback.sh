#!/bin/zsh

latexmk	-C
rsync -a -v  --exclude "man.tex" --exclude ".git/" --exclude "syncback.sh" --exclude "README.md" ./ ~
