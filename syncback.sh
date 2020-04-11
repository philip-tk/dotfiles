#!/bin/zsh
setopt extendedglob

rm -f man*~*.tex
rsync -a -v  --exclude "man.tex" --exclude ".git/" --exclude "syncback.sh" --exclude "README.md" ./ ~
