#! /usr/bin/env bash

git add .
git commit -m 'chore: update'
git push

lerna version $1 --yes
lerna publish from-git --yes
