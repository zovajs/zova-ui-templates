#! /usr/bin/env bash

pnpm --dir './zova-ui-empty' update
pnpm --dir './zova-ui-empty' prerun
pnpm --dir './zova-ui-quasar' update
pnpm --dir './zova-ui-quasar' prerun
pnpm --dir './zova-ui-vuetify' update
pnpm --dir './zova-ui-vuetify' prerun

git add .
git commit -m 'chore: update'
git push

lerna version $1
lerna publish from-git

